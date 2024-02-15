import "package:flutter/material.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class Settings extends Equatable {
  final ThemeMode themeMode;
  final Locale? locale;
  final double musicVolume;
  final double sfxVolume;
  final Color themeSeed;

  const Settings({
    this.themeMode = ThemeMode.system,
    this.locale,
    this.musicVolume = 0.2,
    this.sfxVolume = 0.3,
    this.themeSeed = const Color(0x00CD4F57),
  });

  @override
  List<Object?> get props =>
      [themeMode, locale, musicVolume, sfxVolume, themeSeed];
}

sealed class SettingsEvent {}

final class SettingsReset extends SettingsEvent {}

final class SettingsThemeModeSelected extends SettingsEvent {
  final ThemeMode themeMode;

  SettingsThemeModeSelected(this.themeMode);
}

final class SettingsLocaleSelected extends SettingsEvent {
  final Locale? locale;

  SettingsLocaleSelected(this.locale);
}

final class SettingsMusicVolumeChanged extends SettingsEvent {
  final double musicVolume;

  SettingsMusicVolumeChanged(this.musicVolume);
}

final class SettingsSfxVolumeChanged extends SettingsEvent {
  final double sfxVolume;

  SettingsSfxVolumeChanged(this.sfxVolume);
}

final class SettingsThemeSeedChanged extends SettingsEvent {
  final Color themeSeed;

  SettingsThemeSeedChanged(this.themeSeed);
}

class SettingsBloc extends HydratedBloc<SettingsEvent, Settings> {
  SettingsBloc() : super(const Settings()) {
    on<SettingsReset>((event, emit) => emit(const Settings()));
    on<SettingsThemeModeSelected>((event, emit) => emit(Settings(
        themeMode: event.themeMode,
        locale: state.locale,
        musicVolume: state.musicVolume,
        sfxVolume: state.sfxVolume,
        themeSeed: state.themeSeed)));
    on<SettingsLocaleSelected>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: event.locale,
        musicVolume: state.musicVolume,
        sfxVolume: state.sfxVolume,
        themeSeed: state.themeSeed)));
    on<SettingsMusicVolumeChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        musicVolume: event.musicVolume,
        sfxVolume: state.sfxVolume,
        themeSeed: state.themeSeed)));
    on<SettingsSfxVolumeChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        musicVolume: state.musicVolume,
        sfxVolume: event.sfxVolume,
        themeSeed: state.themeSeed)));

    on<SettingsThemeSeedChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        musicVolume: state.musicVolume,
        sfxVolume: state.sfxVolume,
        themeSeed: event.themeSeed)));
  }

  @override
  Settings fromJson(Map<String, dynamic> json) => Settings(
        themeMode: ThemeMode.values[json["theme_mode"]],
        locale: json["locale_language_code"] != null &&
                json["locale_language_code"] != "und"
            ? Locale(json["locale_language_code"], json["locale_country_code"])
            : null,
        musicVolume: json["music_volume"],
        sfxVolume: json["sfx_volume"],
        themeSeed: Color(json["theme_seed"]),
      );

  @override
  Map<String, dynamic> toJson(Settings state) => <String, dynamic>{
        "theme_mode": state.themeMode.index,
        "locale_language_code": state.locale?.languageCode,
        "locale_country_code": state.locale?.countryCode,
        "music_volume": state.musicVolume,
        "sfx_volume": state.sfxVolume,
        "theme_seed": state.themeSeed.value,
      };
}
