📒 APLIKASI NOTES ANDROID (FLUTTER)
🧩 Deskripsi Aplikasi

Aplikasi Notes Android berbasis Flutter dengan tampilan modern Material 3, terinspirasi dari Notion & Google Keep.
Aplikasi ini mendukung pencatatan teks sederhana dengan fitur add, edit, delete, undo/redo, dark mode default, serta multi bahasa (Indonesia & English).
Data catatan disimpan secara lokal menggunakan Hive sehingga tetap tersimpan walau aplikasi ditutup.

✨ Fitur Utama

➕ Tambah catatan

✏️ Edit catatan yang sudah ada

🗑️ Hapus catatan (long press)

↩️ Undo & Redo teks (Android, via tombol)

🌙 Dark Mode (default aktif)

🌐 Multi Bahasa (Indonesia & English)

💾 Penyimpanan lokal (Hive)

🎨 UI modern Material 3

🗂️ Struktur kode rapi & scalable

🛠️ Teknologi yang Digunakan
Teknologi	Keterangan
Flutter	Framework UI
Provider	State management
Hive	Local database
Material 3	UI Design
UUID	Generate ID catatan
flutter_localizations	Multi bahasa
🗂️ STRUKTUR PROJECT
lib/
├── main.dart
│
├── models/
│   ├── note.dart           # Model catatan + Hive annotation
│   └── note.g.dart         # Generated Hive adapter
│
├── providers/
│   ├── note_provider.dart  # CRUD & state catatan
│   ├── theme_provider.dart # Dark mode (default ON)
│   └── locale_provider.dart# Pengaturan bahasa
│
├── screens/
│   ├── home_screen.dart    # Halaman utama (list catatan)
│   ├── editor_screen.dart  # Tambah & edit catatan + undo/redo
│   └── settings_screen.dart# Pengaturan tema & bahasa
│
├── widgets/
│   ├── note_card.dart      # Card UI catatan
│   └── undo_redo_bar.dart  # Tombol undo & redo
│
└── utils/
    └── app_strings.dart    # String localization (ID & EN)

🧠 Arsitektur Aplikasi

Pattern: MVVM ringan

State Management: Provider

Persistence: Hive local database

Localization: Manual string mapping

Theme Handling: Global ThemeProvider

🌙 Dark Mode

Dark mode aktif secara default

Bisa diubah lewat halaman Settings

Menggunakan Material 3 theme

🌐 Multi Bahasa

Bahasa yang tersedia:

🇮🇩 Indonesia (default)

🇬🇧 English

Bahasa dapat diganti secara real-time melalui Settings.

↩️ Undo & Redo

Undo / Redo teks berbasis snapshot

Fokus Android (tanpa keyboard shortcut)

Tombol khusus di editor

Aman saat edit catatan lama

💾 Penyimpanan Data

Menggunakan Hive

Catatan disimpan secara lokal

Tidak memerlukan internet

Tetap tersimpan setelah aplikasi ditutup

🚀 Cara Menjalankan
flutter pub get
flutter pub run build_runner build
flutter run

📦 Dependency Utama
provider
hive
hive_flutter
uuid
flutter_localizations

📌 Status Aplikasi

✔ Core feature selesai
✔ Siap dikembangkan lebih lanjut

🔮 Pengembangan Selanjutnya (Opsional)

Search & filter catatan

Pin catatan

Checklist / markdown

Autosave

Backup & restore

Animasi ala Notion

Export PDF / TXT
