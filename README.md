📒 Android Notes App (Flutter)






A modern Android Notes application built with Flutter using Material 3, inspired by Notion and Google Keep.
This app supports basic text notes with add, edit, delete, undo/redo, default dark mode, and multi-language support (Indonesian & English).

All notes are stored locally using Hive, ensuring data persistence even when the app is closed or offline.

✨ Key Features

➕ Add new notes

✏️ Edit existing notes

🗑️ Delete notes (long press)

↩️ Undo & Redo text (Android-only, via buttons)

🌙 Dark Mode (enabled by default)

🌐 Multi-Language (Indonesian & English)

💾 Local storage using Hive

🎨 Modern Material 3 UI

🗂️ Clean & scalable project structure

🖼️ Demo / Screenshots
Home Screen & Editor

(Optional: add more screenshots or a GIF for UI animation)

![App Animation](assets/images/demo.gif)

🛠️ Technologies Used
Technology	Description
Flutter	UI Framework
Dart	Programming Language
Provider	State Management
Hive	Local Database
Material 3	UI Design
UUID	Generate Note IDs
flutter_localizations	Multi-Language Support
🗂️ Project Structure
lib/
├── main.dart
│
├── models/
│   ├── note.dart            # Note model + Hive annotation
│   └── note.g.dart          # Generated Hive adapter
│
├── providers/
│   ├── note_provider.dart   # Note CRUD & state management
│   ├── theme_provider.dart  # Dark mode (default ON)
│   └── locale_provider.dart # Language settings
│
├── screens/
│   ├── home_screen.dart     # Main screen (note list)
│   ├── editor_screen.dart   # Add & edit notes + undo/redo
│   └── settings_screen.dart # Theme & language settings
│
├── widgets/
│   ├── note_card.dart       # Note card UI
│   └── undo_redo_bar.dart   # Undo & redo buttons
│
└── utils/
    └── app_strings.dart     # Localization strings (ID & EN)

🌙 Dark Mode

Dark mode enabled by default

Can be toggled in Settings

Uses Material 3 Theme

🌐 Multi-Language

Available languages:

🇮🇩 Indonesian (default)

🇬🇧 English

Language can be changed in real-time via Settings.

↩️ Undo & Redo

Undo / Redo based on text snapshots

Focused on Android (no keyboard shortcuts)

Dedicated buttons in the editor

Safe when editing old notes

💾 Data Persistence

Powered by Hive

Data stored locally

Works offline

Notes remain after closing the app

🚀 How to Run
flutter pub get
flutter pub run build_runner build
flutter run

📦 Main Dependencies

provider

hive

hive_flutter

uuid

flutter_localizations

📌 App Status

✅ Core features implemented
✅ Stable for basic usage
✅ Ready for further development

🔮 Future Enhancements (Optional)

🔍 Search & filter notes

📌 Pin notes

☑️ Checklist / Markdown support

💾 Autosave

☁️ Backup & restore

🎞️ Animations like Notion

📄 Export notes to PDF / TXT
