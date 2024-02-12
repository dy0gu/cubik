import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:equatable/equatable.dart";

class Statistics extends Equatable {
  final List<int> previousGameMoves;

  const Statistics({required this.previousGameMoves});

  @override
  List<Object> get props => [previousGameMoves];
}

sealed class StatisticsEvent {}

class StatisticsGameRecorded extends StatisticsEvent {
  final int moves;

  StatisticsGameRecorded({required this.moves});
}

class StatisticsBloc extends HydratedBloc<StatisticsEvent, Statistics> {
  StatisticsBloc() : super(const Statistics(previousGameMoves: [])) {
    on<StatisticsGameRecorded>((event, emit) {
      // Limit the number of previous game moves tracked to 100
      final previousGameMoves = state.previousGameMoves.length < 100
          ? [...state.previousGameMoves, event.moves]
          : [...state.previousGameMoves.sublist(1), event.moves];
      emit(Statistics(previousGameMoves: previousGameMoves));
    });
  }

  @override
  Statistics fromJson(Map<String, dynamic> json) {
    if (json["previousGameMoves"] is List) {
      return Statistics(
          previousGameMoves: List<int>.from(json["previousGameMoves"]));
    } else {
      return const Statistics(previousGameMoves: []);
    }
  }

  @override
  Map<String, dynamic> toJson(Statistics state) {
    return {"previousGameMoves": state.previousGameMoves};
  }
}
