import 'package:flutter/material.dart';
//update

class AppStrings {
  static String of(BuildContext context, String key) {
    final lang = Localizations.localeOf(context).languageCode;

    const data = {
      'id': {
        'notes': 'Catatan',
        'settings': 'Pengaturan',
        'dark_mode': 'Mode Gelap',
        'language': 'Bahasa',
        'new_note': 'Catatan Baru',
        'editor': 'Editor',
        'title': 'Judul',
        'content': 'Tulis catatan...',
        'save': 'Simpan',
        'delete': 'Hapus',
        'cancel': 'Batal',
        'delete_confirm': 'Catatan akan dihapus permanen',
        'no_title': 'Tanpa Judul',
      },
      'en': {
        'notes': 'Notes',
        'settings': 'Settings',
        'dark_mode': 'Dark Mode',
        'language': 'Language',
        'new_note': 'New Note',
        'editor': 'Editor',
        'title': 'Title',
        'content': 'Write note...',
        'save': 'Save',
        'delete': 'Delete',
        'cancel': 'Cancel',
        'delete_confirm': 'This note will be deleted permanently',
        'no_title': 'Untitled',
      },
    };

    return data[lang]?[key] ?? key;
  }
}
