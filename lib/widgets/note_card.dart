import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/note.dart';
import '../providers/note_provider.dart';
import '../screens/editor_screen.dart';
import '../utils/app_strings.dart';
//update

class NoteCard extends StatelessWidget {
  final Note note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => EditorScreen(note: note),
          ),
        ),
        onLongPress: () {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text(AppStrings.of(context, 'delete')),
              content:
              Text(AppStrings.of(context, 'delete_confirm')),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(AppStrings.of(context, 'cancel')),
                ),
                FilledButton(
                  onPressed: () {
                    context.read<NoteProvider>().delete(note);
                    Navigator.pop(context);
                  },
                  child: Text(AppStrings.of(context, 'delete')),
                ),
              ],
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title.isEmpty
                    ? AppStrings.of(context, 'no_title')
                    : note.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                note.content,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
