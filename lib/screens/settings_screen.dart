import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../providers/locale_provider.dart';
import '../utils/app_strings.dart';
//update

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    final locale = context.watch<LocaleProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.of(context, 'settings')),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text(AppStrings.of(context, 'dark_mode')),
            value: theme.isDark,
            onChanged: (_) => theme.toggle(),
          ),
          ListTile(
            title: Text(AppStrings.of(context, 'language')),
            trailing: DropdownButton<String>(
              value: locale.locale.languageCode,
              items: const [
                DropdownMenuItem(value: 'id', child: Text('Indonesia')),
                DropdownMenuItem(value: 'en', child: Text('English')),
              ],
              onChanged: (v) => locale.setLocale(Locale(v!)),
            ),
          ),
        ],
      ),
    );
  }
}
