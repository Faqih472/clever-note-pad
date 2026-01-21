import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/note.dart';
import '../providers/note_provider.dart';
import '../widgets/undo_redo_bar.dart';
import '../utils/app_strings.dart';
//update

class EditorScreen extends StatefulWidget {
  final Note? note;
  const EditorScreen({super.key, this.note});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  late TextEditingController titleController;
  late TextEditingController contentController;

  final List<String> _undoStack = [];
  final List<String> _redoStack = [];

  bool _isUndoRedoAction = false;

  @override
  void initState() {
    super.initState();

    titleController =
        TextEditingController(text: widget.note?.title ?? '');
    contentController =
        TextEditingController(text: widget.note?.content ?? '');

    contentController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    if (_isUndoRedoAction) return;

    if (_undoStack.isEmpty ||
        _undoStack.last != contentController.text) {
      _undoStack.add(contentController.text);
      _redoStack.clear();
    }
  }

  void undo() {
    if (_undoStack.length < 2) return;

    _isUndoRedoAction = true;

    _redoStack.add(_undoStack.removeLast());
    contentController.text = _undoStack.last;

    contentController.selection = TextSelection.fromPosition(
      TextPosition(offset: contentController.text.length),
    );

    _isUndoRedoAction = false;
  }

  void redo() {
    if (_redoStack.isEmpty) return;

    _isUndoRedoAction = true;

    final text = _redoStack.removeLast();
    _undoStack.add(text);
    contentController.text = text;

    contentController.selection = TextSelection.fromPosition(
      TextPosition(offset: contentController.text.length),
    );

    _isUndoRedoAction = false;
  }

  void saveNote() {
    context.read<NoteProvider>().save(
      Note(
        id: widget.note?.id ?? const Uuid().v4(),
        title: titleController.text,
        content: contentController.text,
        createdAt: DateTime.now(),
      ),
    );

    Navigator.pop(context);
  }

  @override
  void dispose() {
    contentController.removeListener(_onTextChanged);
    contentController.dispose();
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.of(context, 'editor')),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: saveNote,
          ),
        ],
      ),
      body: Column(
        children: [
          UndoRedoBar(
            onUndo: undo,
            onRedo: redo,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: AppStrings.of(context, 'title'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: contentController,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: AppStrings.of(context, 'content'),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
