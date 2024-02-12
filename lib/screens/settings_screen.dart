import "package:flutter/material.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:cubik/logic/settings_bloc.dart";
import "package:cubik/widgets/framed.dart";

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations locale = AppLocalizations.of(context)!;
    return Framed(
        child: Column(children: [
      Row(
        children: [
          Expanded(
            child: Row(
              children: [
                FloatingActionButton(
                  heroTag: null,
                  child: const Icon(Icons.arrow_back),
                  onPressed: () => context.go("/"),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 60),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownMenu<ThemeMode>(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            leadingIcon: const Icon(Icons.color_lens),
            requestFocusOnTap: false,
            initialSelection: context.watch<SettingsBloc>().state.themeMode,
            onSelected: (ThemeMode? newValue) {
              if (newValue != null) {
                context
                    .read<SettingsBloc>()
                    .add(SettingsThemeModeSelected(newValue));
              }
            },
            dropdownMenuEntries: [
              DropdownMenuEntry<ThemeMode>(
                  value: ThemeMode.system, label: locale.system),
              DropdownMenuEntry<ThemeMode>(
                value: ThemeMode.light,
                label: locale.light,
              ),
              DropdownMenuEntry<ThemeMode>(
                value: ThemeMode.dark,
                label: locale.dark,
              ),
            ],
          ),
          const SizedBox(height: 15),
          DropdownMenu<Locale?>(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            leadingIcon: const Icon(Icons.language),
            requestFocusOnTap: false,
            initialSelection: context.watch<SettingsBloc>().state.locale,
            onSelected: (Locale? newValue) {
              if (newValue != null) {
                context
                    .read<SettingsBloc>()
                    .add(SettingsLocaleSelected(newValue));
              }
            },
            dropdownMenuEntries: [
              DropdownMenuEntry<Locale?>(
                value: null,
                label: locale.system,
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("de", "DE"),
                label: "Deutsch",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("en", "US"),
                label: "English",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("es", "ES"),
                label: "Español",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("fr", "FR"),
                label: "Français",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("it", "IT"),
                label: "Italiano",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("pt", "PT"),
                label: "Português de Portugal",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("pt", "BR"),
                label: "Português do Brasil",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("ru", "RU"),
                label: "Русский",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("tr", "TR"),
                label: "Türkçe",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("vi", "VN"),
                label: "Tiếng Việt",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("ar", "AA"),
                label: "العربية",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("zh", "CN"),
                label: "简体中文",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("ja", "JP"),
                label: "日本語",
              ),
              const DropdownMenuEntry<Locale?>(
                value: Locale("ko", "KR"),
                label: "한국어",
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.music_note),
              Slider(
                value: context.watch<SettingsBloc>().state.musicVolume,
                onChanged: (value) {
                  context
                      .read<SettingsBloc>()
                      .add(SettingsMusicVolumeChanged(value));
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.volume_up),
              Slider(
                value: context.watch<SettingsBloc>().state.sfxVolume,
                onChanged: (value) {
                  context
                      .read<SettingsBloc>()
                      .add(SettingsSfxVolumeChanged(value));
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text(locale.settingsResetConfirmationTitle),
                        content: Text(locale.settingsResetConfirmationBody),
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                context
                                    .read<SettingsBloc>()
                                    .add(SettingsReset());
                                Navigator.pop(context);
                              },
                              child: Text(locale.yes)),
                          ElevatedButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text(locale.no)),
                        ],
                      ));
            },
            child: const Icon(Icons.delete_forever),
          ),
          const SizedBox(height: 30),
        ],
      ),
    ]));
  }
}
