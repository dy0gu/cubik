import "package:flutter/material.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class Settings extends Equatable {
  final ThemeMode themeMode;
  final Locale? locale;
  final double musicVolume;
  final double sfxVolume;

  const Settings({
    this.themeMode = ThemeMode.system,
    this.locale,
    this.musicVolume = 0.2,
    this.sfxVolume = 0.3,
  });

  @override
  List<Object?> get props => [themeMode, locale, musicVolume, sfxVolume];
}

sealed class SettingsEvent {}

final class SettingsReset extends SettingsEvent {}

final class SettingsThemeModeSelected extends SettingsEvent {
  final ThemeMode themeMode;

  SettingsThemeModeSelected(this.themeMode);
}

final class SettingsLocaleSelected extends SettingsEvent {
  final Locale locale;

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

class SettingsBloc extends HydratedBloc<SettingsEvent, Settings> {
  SettingsBloc() : super(const Settings()) {
    on<SettingsReset>((event, emit) => emit(const Settings()));
    on<SettingsThemeModeSelected>((event, emit) => emit(Settings(
        themeMode: event.themeMode,
        locale: state.locale,
        musicVolume: state.musicVolume,
        sfxVolume: state.sfxVolume)));
    on<SettingsLocaleSelected>(((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: event.locale,
        musicVolume: state.musicVolume,
        sfxVolume: state.sfxVolume))));
    on<SettingsMusicVolumeChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        musicVolume: event.musicVolume,
        sfxVolume: state.sfxVolume)));
    on<SettingsSfxVolumeChanged>((event, emit) => emit(Settings(
        themeMode: state.themeMode,
        locale: state.locale,
        musicVolume: state.musicVolume,
        sfxVolume: event.sfxVolume)));
  }

  @override
  Settings fromJson(Map<String, dynamic> json) => (json["theme_mode"] is int &&
          json["locale_language_code"] is String &&
          json["locale_country_code"] is String &&
          json["music_volume"] is double &&
          json["sfx_volume"] is double)
      ? Settings(
          themeMode: ThemeMode.values[json["theme_mode"]],
          locale: Locale(
            json["locale_language_code"],
            json["locale_country_code"],
          ),
          musicVolume: json["music_volume"],
          sfxVolume: json["sfx_volume"],
        )
      : const Settings();

  @override
  Map<String, dynamic> toJson(Settings state) => <String, dynamic>{
        "theme_mode": state.themeMode.index,
        "locale_language_code": state.locale?.languageCode,
        "locale_country_code": state.locale?.countryCode,
        "music_volume": state.musicVolume,
        "sfx_volume": state.sfxVolume,
      };
}
