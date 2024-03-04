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
    ThemeData theme = Theme.of(context);
    return Framed(
        child: Column(children: [
      Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Tooltip(
                  waitDuration: const Duration(seconds: 1),
                  verticalOffset: 35,
                  message: locale.back,
                  child: FloatingActionButton(
                    heroTag: null,
                    child: const Icon(Icons.arrow_back),
                    onPressed: () => context.go("/"),
                  ),
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
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 15,
            runSpacing: 15,
            children: [
              Tooltip(
                waitDuration: const Duration(seconds: 1),
                verticalOffset: 35,
                message: locale.theme,
                child: DropdownMenu<ThemeMode>(
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  leadingIcon: const Icon(Icons.color_lens),
                  requestFocusOnTap: false,
                  initialSelection:
                      context.read<SettingsBloc>().state.themeMode,
                  onSelected: (ThemeMode? value) {
                    if (value != null) {
                      context
                          .read<SettingsBloc>()
                          .add(SettingsThemeModeSelected(value));
                      // Hide current snackbar since theme change does not affect existing
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
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
              ),
              Tooltip(
                waitDuration: const Duration(seconds: 1),
                message: locale.color,
                child: FloatingActionButton(
                  heroTag: null,
                  child: Icon(
                    Icons.colorize,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                  onPressed: () {
                    final bloc = context.read<SettingsBloc>();
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (innerContext) => BlocBuilder<SettingsBloc,
                                Settings>(
                            bloc: bloc,
                            builder: (builderContext, settings) {
                              ThemeData theme = Theme.of(context);
                              return AlertDialog(
                                content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      children: [
                                        Text("R",
                                            style: theme.textTheme.bodyLarge),
                                        Expanded(
                                          child: Slider(
                                              value: settings.themeSeed.red
                                                  .toDouble(),
                                              min: 0,
                                              max: 255,
                                              onChanged: (value) {
                                                builderContext
                                                    .read<SettingsBloc>()
                                                    .add(
                                                        SettingsThemeSeedChanged(
                                                            Color.fromARGB(
                                                                255,
                                                                value.toInt(),
                                                                settings
                                                                    .themeSeed
                                                                    .green,
                                                                settings
                                                                    .themeSeed
                                                                    .blue)));
                                              }),
                                        ),
                                        Text(settings.themeSeed.red.toString(),
                                            style: theme.textTheme.bodyLarge),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text("G",
                                            style: theme.textTheme.bodyLarge),
                                        Expanded(
                                          child: Slider(
                                              value: settings.themeSeed.green
                                                  .toDouble(),
                                              min: 0,
                                              max: 255,
                                              onChanged: (value) {
                                                builderContext
                                                    .read<SettingsBloc>()
                                                    .add(
                                                        SettingsThemeSeedChanged(
                                                            Color.fromARGB(
                                                                255,
                                                                settings
                                                                    .themeSeed
                                                                    .red,
                                                                value.toInt(),
                                                                settings
                                                                    .themeSeed
                                                                    .blue)));
                                              }),
                                        ),
                                        Text(
                                            settings.themeSeed.green.toString(),
                                            style: theme.textTheme.bodyLarge),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text("B",
                                            style: theme.textTheme.bodyLarge),
                                        Expanded(
                                          child: Slider(
                                              value: settings.themeSeed.blue
                                                  .toDouble(),
                                              min: 0,
                                              max: 255,
                                              onChanged: (value) {
                                                builderContext
                                                    .read<SettingsBloc>()
                                                    .add(
                                                        SettingsThemeSeedChanged(
                                                            Color.fromARGB(
                                                                255,
                                                                settings
                                                                    .themeSeed
                                                                    .red,
                                                                settings
                                                                    .themeSeed
                                                                    .green,
                                                                value
                                                                    .toInt())));
                                              }),
                                        ),
                                        Text(settings.themeSeed.blue.toString(),
                                            style: theme.textTheme.bodyLarge),
                                      ],
                                    ),
                                  ],
                                ),
                                actionsAlignment: MainAxisAlignment.center,
                                actions: [
                                  Tooltip(
                                    waitDuration: const Duration(seconds: 1),
                                    message: locale.back,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(builderContext).pop();
                                      },
                                      child: const Icon(Icons.arrow_back),
                                    ),
                                  ),
                                ],
                              );
                            }));
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Tooltip(
            waitDuration: const Duration(seconds: 1),
            verticalOffset: 35,
            message: locale.language,
            child: DropdownMenu<Locale?>(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              leadingIcon: const Icon(Icons.language),
              requestFocusOnTap: false,
              initialSelection: context.watch<SettingsBloc>().state.locale,
              onSelected: (Locale? value) {
                context.read<SettingsBloc>().add(SettingsLocaleSelected(value));
                // Hide current snackbar since language change does not affect existing snackbars
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
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
          ),
        ],
      ),
    ]));
  }
}
