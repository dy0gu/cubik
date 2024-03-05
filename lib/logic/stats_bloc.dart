import "package:hydrated_bloc/hydrated_bloc.dart";

class StatisticEntry {
  DateTime date;
  int boardSize;
  int moves;

  StatisticEntry(
      {required this.date, required this.boardSize, required this.moves});
}

class Statistics {
  List<StatisticEntry> entries;

  Statistics({this.entries = const <StatisticEntry>[]});
}

sealed class StatisticsEvent {}

class StatisticsGameRecorded extends StatisticsEvent {
  final int boardSize;
  final int moves;

  StatisticsGameRecorded({required this.moves, required this.boardSize});
}

class StatisticsBloc extends HydratedBloc<StatisticsEvent, Statistics> {
  StatisticsBloc() : super(Statistics()) {
    on<StatisticsGameRecorded>((event, emit) {
      // Limit the number of games tracked to 1000
      final entries = state.entries.length >= 1000
          ? state.entries.sublist(1)
          : state.entries;
      entries.add(StatisticEntry(
          date: DateTime.now(),
          boardSize: event.boardSize,
          moves: event.moves));
      state.entries = entries;
      emit(state);
    });
  }

  @override
  Statistics fromJson(Map<String, dynamic> json) => Statistics(
      entries: (json["entries"] as List)
          .map((entry) => StatisticEntry(
              date: DateTime.parse(entry["date"]),
              boardSize: entry["boardSize"],
              moves: entry["moves"]))
          .toList());

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
