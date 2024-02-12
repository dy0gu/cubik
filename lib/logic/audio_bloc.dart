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

class AudioBloc extends HydratedBloc<AudioEvent, Audio> {
  AudioBloc()
      : super(Audio(
          musicPlayer: AudioPlayer(),
          sfxPlayer: AudioPlayer(),
        ));

  @override
  Audio fromJson(Map<String, dynamic> json) {
    return Audio(
      musicPlayer: AudioPlayer(),
      sfxPlayer: AudioPlayer(),
    );
  }

  @override
  Map<String, dynamic> toJson(Audio state) {
    return {
      "musicPlayer": state.musicPlayer,
      "sfxPlayer": state.sfxPlayer,
    };
  }
}
