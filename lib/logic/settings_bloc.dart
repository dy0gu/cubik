import "package:flutter/material.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class Settings extends Equatable {
  final ThemeMode themeMode;
  final Color themeSeed;
  final Locale? locale;

  const Settings({
    this.themeMode = ThemeMode.system,
    this.themeSeed = const Color(0x00CD4F57),
    this.locale,
  });

  @override
  List<Object?> get props => [themeMode, themeSeed, locale];
}

sealed class SettingsEvent {}

final class SettingsReset extends SettingsEvent {}

final class SettingsThemeModeSelected extends SettingsEvent {
  final ThemeMode themeMode;

  SettingsThemeModeSelected(this.themeMode);
}

final class SettingsThemeSeedChanged extends SettingsEvent {
  final Color themeSeed;

  SettingsThemeSeedChanged(this.themeSeed);
}

final class SettingsLocaleSelected extends SettingsEvent {
  final Locale? locale;

  SettingsLocaleSelected(this.locale);
}

class SettingsBloc extends HydratedBloc<SettingsEvent, Settings> {
  SettingsBloc() : super(const Settings()) {
    on<SettingsReset>((event, emit) => emit(const Settings()));
    on<SettingsThemeModeSelected>((event, emit) => emit(Settings(
        themeMode: event.themeMode,
        locale: state.locale,
        themeSeed: state.themeSeed)));
    on<SettingsThemeSeedChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        themeSeed: event.themeSeed)));
    on<SettingsLocaleSelected>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: event.locale,
        themeSeed: state.themeSeed)));
  }

  @override
  Settings fromJson(Map<String, dynamic> json) => Settings(
        themeMode: ThemeMode.values[json["theme_mode"]],
        themeSeed: Color(json["theme_seed"]),
        locale: json["locale_language_code"] != null &&
                json["locale_language_code"] != "und"
            ? Locale(json["locale_language_code"], json["locale_country_code"])
            : null,
      );

  @override
  Map<String, dynamic> toJson(Settings state) => <String, dynamic>{
        "theme_mode": state.themeMode.index,
        "theme_seed": state.themeSeed.value,
        "locale_language_code": state.locale?.languageCode,
        "locale_country_code": state.locale?.countryCode,
      };
}
