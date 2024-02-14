import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";
import "package:just_audio/just_audio.dart";

class Audio extends Equatable {
  final AudioPlayer musicPlayer;
  final AudioPlayer sfxPlayer;

  const Audio({required this.musicPlayer, required this.sfxPlayer});

  @override
  List<Object> get props => [musicPlayer, sfxPlayer];
}

sealed class AudioEvent {}

class AudioInitialized extends AudioEvent {
  final double musicVolume;
  final double sfxVolume;

  AudioInitialized({required this.musicVolume, required this.sfxVolume});
}

class AudioMusicVolumeChanged extends AudioEvent {
  final double volume;

  AudioMusicVolumeChanged({required this.volume});
}

class AudioSfxVolumeChanged extends AudioEvent {
  final double volume;

  AudioSfxVolumeChanged({required this.volume});
}

class AudioEffectPlayed extends AudioEvent {}

class AudioBloc extends Bloc<AudioEvent, Audio> {
  AudioBloc()
      : super(Audio(
          musicPlayer: AudioPlayer(),
          sfxPlayer: AudioPlayer(),
        )) {
    on<AudioInitialized>((event, emit) async {});

    on<AudioEffectPlayed>((event, emit) async {});

    on<AudioMusicVolumeChanged>((event, emit) async {});

    on<AudioSfxVolumeChanged>((event, emit) async {});
  }
}
