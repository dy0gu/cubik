import "package:cubik/logic/profile_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:cubik/logic/settings_bloc.dart";
import "package:cubik/logic/stats_bloc.dart";
import "package:cubik/router/router_config.dart";
import "package:cubik/utils//brightness_extension.dart";
import "package:cubik/utils/theme_mode_extension.dart";

/// The main application widget.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide the settings and audio blocs at the root so they are accessible everywhere
    return MultiBlocProvider(
        providers: [
          BlocProvider<SettingsBloc>(
            lazy: true,
            create: (context) => SettingsBloc(),
          ),
          BlocProvider<StatisticsBloc>(
            lazy: false,
            create: (context) => StatisticsBloc(),
          ),
          BlocProvider<ProfileBloc>(
            lazy: true,
            create: (context) => ProfileBloc(),
          ),
        ],
        child: BlocBuilder<SettingsBloc, Settings>(
          builder: (context, settings) {
            // Set the app to completely render under the status/navigation bar on mobile devices
            // Use "immersiveSticky" instead of "edgeToEdge" for fullscreen and status/navigation bar hiding
            SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
            // Match device UI with current theme
            SystemChrome.setSystemUIOverlayStyle(
              SystemUiOverlayStyle(
                // Set the status bar and navigation bar to transparent on Android (Colors.transparent does not work)
                // On iOS they are already transparent by default
                systemNavigationBarColor: const Color(0x01010100),
                statusBarColor: const Color(0x01010100),
                // Change the color of the status bar and navigation bar icons on Android depending on the theme mode
                // This is needed because if they match the background color, they will be invisible
                systemNavigationBarIconBrightness:
                    settings.themeMode.toBrightness(context).inverted(),
                statusBarIconBrightness:
                    settings.themeMode.toBrightness(context).inverted(),
                // Change the color of the status bar and navigation bar icons on IOS, same reason as above
                statusBarBrightness: settings.themeMode.toBrightness(context),
              ),
            );
            return MaterialApp.router(
              title: "Cubik",
              theme: ThemeData.from(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: settings.themeSeed,
                    brightness: Brightness.light),
              ),
              darkTheme: ThemeData.from(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: settings.themeSeed, brightness: Brightness.dark),
              ),
              themeMode: settings.themeMode,
              routerConfig: routerConfig,
              locale: settings.locale,
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              debugShowCheckedModeBanner: false,
            );
          },
        ));
  }
}
