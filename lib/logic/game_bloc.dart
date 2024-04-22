import "package:hydrated_bloc/hydrated_bloc.dart";
import "dart:math";
import "package:equatable/equatable.dart";

class GamePiecePosition extends Equatable {
  final int row;
  final int column;

  const GamePiecePosition({required this.row, required this.column});

  @override
  List<Object?> get props => [row, column];
}

class GamePiece extends Equatable {
  final int value;
  final GamePiecePosition position;

  bool isCorrect(int boardSize) {
    return value == 0 ||
        value == position.row * boardSize + position.column + 1;
  }

  const GamePiece({required this.value, required this.position});

  @override
  List<Object?> get props => [value, position];
}

class Game extends Equatable {
  final int boardSize;
  final List<List<GamePiece>> pieces;
  final int moves;

  bool isOver() {
    return pieces
        .expand((row) => row)
        .every((piece) => piece.isCorrect(boardSize));
  }

  const Game(
      {required this.pieces, required this.boardSize, required this.moves});

  @override
  List<Object?> get props => [boardSize, pieces, moves];
}

sealed class GameEvent {}

class GameShuffled extends GameEvent {}

class GamePieceMoved extends GameEvent {
  GamePiece piece;

  GamePieceMoved({required this.piece});
}

class GameSizeIncreased extends GameEvent {}

class GameSizeDecreased extends GameEvent {}

class GameCheatActivated extends GameEvent {}

class GameBloc extends Bloc<GameEvent, Game> {
  GameBloc() : super(Game(pieces: generate(3), boardSize: 3, moves: 0)) {
    on<GameShuffled>((event, emit) {
      emit(Game(
          pieces: generate(state.boardSize),
          boardSize: state.boardSize,
          moves: 0));
    });
    on<GameSizeIncreased>((event, emit) {
      if (state.boardSize < 5) {
        emit(Game(
            pieces: generate(state.boardSize + 1),
            boardSize: state.boardSize + 1,
            moves: 0));
      }
    });
    on<GameSizeDecreased>((event, emit) {
      if (state.boardSize > 3) {
        emit(Game(
            pieces: generate(state.boardSize - 1),
            boardSize: state.boardSize - 1,
            moves: 0));
      }
    });
    on<GamePieceMoved>((event, emit) {
      if (state.isOver()) {
        return;
      }
      final piece = event.piece;
      final empty = state.pieces
          .expand((row) => row)
          .firstWhere((piece) => piece.value == 0);
      if ((piece.position.row == empty.position.row &&
              (piece.position.column - empty.position.column).abs() == 1) ||
          (piece.position.column == empty.position.column &&
              (piece.position.row - empty.position.row).abs() == 1)) {
        final newPieces = state.pieces
            .map((row) => row
                .map((current) => current == piece
                    ? GamePiece(value: 0, position: piece.position)
                    : current == empty
                        ? GamePiece(
                            value: piece.value, position: empty.position)
                        : current)
                .toList())
            .toList();
        emit(Game(
            pieces: newPieces,
            boardSize: state.boardSize,
            moves: state.moves + 1));
      }
    });
    on<GameCheatActivated>((event, emit) {
      if (state.isOver()) {
        return;
      }
      final correctPieces = List.generate(state.boardSize, (i) {
        return List.generate(state.boardSize, (j) {
          final value = i * state.boardSize + j + 1;
          return GamePiece(
              value: value == state.boardSize * state.boardSize ? 0 : value,
              position: GamePiecePosition(row: i, column: j));
        });
      });

      emit(Game(
          pieces: correctPieces,
          boardSize: state.boardSize,
          moves: Random.secure().nextInt(100) + 15));
    });
  }
}

List<List<GamePiece>> generate(int size) {
  Random random = Random();
  List<int> values = List.generate((size * size - 1), (index) => index + 1);
  values.shuffle(random);

  int current = 0;
  return List.generate(size, (i) {
    return List.generate(size, (j) {
      int value;
      if (i == size - 1 && j == size - 1) {
        value = 0;
      } else {
        value = values[current++];
      }

      return GamePiece(
          value: value, position: GamePiecePosition(row: i, column: j));
    });
  });
}
