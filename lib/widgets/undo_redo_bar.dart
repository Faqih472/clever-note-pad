import 'package:flutter/material.dart';
//update

class UndoRedoBar extends StatelessWidget {
  final VoidCallback onUndo;
  final VoidCallback onRedo;

  const UndoRedoBar({
    super.key,
    required this.onUndo,
    required this.onRedo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: const Icon(Icons.undo), onPressed: onUndo),
        IconButton(icon: const Icon(Icons.redo), onPressed: onRedo),
      ],
    );
  }
}
