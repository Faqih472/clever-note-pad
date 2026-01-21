import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  final box = Hive.box<Note>('notes');

  List<Note> get notes => box.values.toList();

  void save(Note note) {
    box.put(note.id, note);
    notifyListeners();
  }

  void delete(Note note) {
    note.delete();
    notifyListeners();
  }
}
