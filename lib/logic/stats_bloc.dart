import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class GameEntry extends Equatable {
  final DateTime date;
  final int boardSize;
  final int moves;

  const GameEntry(
      {required this.date, required this.boardSize, required this.moves});

  @override
  List<Object> get props => [date, boardSize, moves];
}

class Statistics extends Equatable {
  final List<GameEntry> entries;

  const Statistics({this.entries = const <GameEntry>[]});

  @override
  List<Object> get props => [entries];
}

sealed class StatisticsEvent {}

class StatisticsGameRecorded extends StatisticsEvent {
  final int boardSize;
  final int moves;

  StatisticsGameRecorded({required this.moves, required this.boardSize});
}

class StatisticsBloc extends HydratedBloc<StatisticsEvent, Statistics> {
  StatisticsBloc() : super(const Statistics()) {
    on<StatisticsGameRecorded>((event, emit) {
      // Limit the number of games tracked to 1000
      final entries = state.entries.length >= 1000
          ? state.entries.sublist(1)
          : state.entries;
      entries.add(GameEntry(
          date: DateTime.now(),
          boardSize: event.boardSize,
          moves: event.moves));
      emit(Statistics(entries: entries));
    });
  }

  @override
  Statistics fromJson(Map<String, dynamic> json) => json["entries"] is List
      ? Statistics(
          entries: (json["entries"] as List)
              .map((entry) => GameEntry(
                  date: DateTime.parse(entry["date"]),
                  boardSize: entry["boardSize"],
                  moves: entry["moves"]))
              .toList())
      : const Statistics();

  @override
  Map<String, dynamic> toJson(Statistics state) {
    return {
      "entries": state.entries
          .map((entry) => {
                "date": entry.date.toIso8601String(),
                "boardSize": entry.boardSize,
                "moves": entry.moves
              })
          .toList()
    };
  }
}
