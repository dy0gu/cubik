import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class StatisticEntry extends Equatable {
  final DateTime date;
  final int boardSize;
  final int moves;

  const StatisticEntry(
      {required this.date, required this.boardSize, required this.moves});

  @override
  List<Object> get props => [date, boardSize, moves];
}

class Statistics extends Equatable {
  final List<StatisticEntry> entries;

  const Statistics({this.entries = const <StatisticEntry>[]});

  @override
  List<Object> get props => [entries];
}

sealed class StatisticsEvent {}

class StatisticsGameRecorded extends StatisticsEvent {
  final DateTime date = DateTime.now();
  final int boardSize;
  final int moves;

  StatisticsGameRecorded({required this.moves, required this.boardSize});
}

class StatisticsBloc extends HydratedBloc<StatisticsEvent, Statistics> {
  StatisticsBloc() : super(const Statistics()) {
    on<StatisticsGameRecorded>((event, emit) {
      // Limit the number of games tracked to 1000
      final entries = [
        ...state.entries.reversed.take(999),
        StatisticEntry(
            date: event.date, boardSize: event.boardSize, moves: event.moves),
      ];
      emit(Statistics(entries: entries));
    });
  }

  @override
  Statistics fromJson(Map<String, dynamic> json) => json["entries"] is List
      ? Statistics(
          entries: (json["entries"] as List)
              .map((entry) => StatisticEntry(
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
