import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class Statistics extends Equatable {
  final List<int> previousGameMoves;
  final Map<DateTime, int> gamesPlayedPerDay;

  const Statistics(
      {this.previousGameMoves = const [], this.gamesPlayedPerDay = const {}});

  @override
  List<Object> get props => [previousGameMoves];
}

sealed class StatisticsEvent {}

class StatisticsGameRecorded extends StatisticsEvent {
  final int moves;

  StatisticsGameRecorded({required this.moves});
}

class StatisticsBloc extends HydratedBloc<StatisticsEvent, Statistics> {
  StatisticsBloc() : super(const Statistics()) {
    on<StatisticsGameRecorded>((event, emit) {
      // Limit the number of previous game moves tracked to 100
      final previousGameMoves = state.previousGameMoves.length < 100
          ? [...state.previousGameMoves, event.moves]
          : [...state.previousGameMoves.sublist(1), event.moves];
      // Limit the number of games played per day tracked to the last year
      final gamesPlayedPerDay = state.gamesPlayedPerDay;
      emit(Statistics(
          previousGameMoves: previousGameMoves,
          gamesPlayedPerDay: gamesPlayedPerDay));
    });
  }

  @override
  Statistics fromJson(Map<String, dynamic> json) {
    if (json["previousGameMoves"] is List &&
        json["previousGameMoves"].isNotEmpty) {
      return Statistics(
          previousGameMoves: List<int>.from(json["previousGameMoves"]),
          gamesPlayedPerDay:
              Map<DateTime, int>.from(json["gamesPlayedPerDay"]));
    } else {
      return const Statistics();
    }
  }

  @override
  Map<String, dynamic> toJson(Statistics state) {
    return {
      "previousGameMoves": state.previousGameMoves,
      "gamesPlayedPerDay": state.gamesPlayedPerDay
    };
  }
}
