import "package:bloc_test/bloc_test.dart";
import "package:flutter_test/flutter_test.dart";
import "package:cubik/logic/game_bloc.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:mocktail/mocktail.dart";

class MockStorage extends Mock implements HydratedStorage {}

void main() {
  late HydratedStorage storage;
  late GameBloc gameBloc;
  late List<List<GamePiece>> initialPieces;

  setUp(() {
    storage = MockStorage();
    when(() => storage.write(any(), any<dynamic>())).thenAnswer((_) async {
      return;
    });
    HydratedBloc.storage = storage;

    gameBloc = GameBloc();
    initialPieces = gameBloc.state.pieces;
  });

  group("GameBloc", () {
    blocTest<GameBloc, Game>(
      "emits a new game with shuffled pieces when GameShuffled is added",
      build: () => gameBloc,
      act: (bloc) => bloc.add(GameShuffled()),
      expect: () =>
          [isA<Game>().having((g) => g.pieces, "pieces", isNot(initialPieces))],
    );

    blocTest<GameBloc, Game>(
      "increases the board size within bounds when GameSizeIncreased is added",
      build: () => gameBloc,
      seed: () => Game(
          pieces: generate(maxBoardSize - 1),
          boardSize: maxBoardSize - 1,
          moves: 0),
      act: (bloc) => bloc.add(GameSizeIncreased()),
      expect: () => [
        isA<Game>()
            .having((g) => g.boardSize, "boardSize", equals(maxBoardSize))
      ],
    );

    blocTest<GameBloc, Game>(
        "does not increase the board size beyond bounds when GameSizeIncreased is added",
        build: () => gameBloc,
        seed: () => Game(
            pieces: generate(maxBoardSize), boardSize: maxBoardSize, moves: 0),
        act: (bloc) => bloc.add(GameSizeIncreased()),
        expect: () => []);

    blocTest<GameBloc, Game>(
      "decreases the board size within bounds when GameSizeDecreased is added",
      build: () => gameBloc,
      seed: () => Game(
          pieces: generate(minBoardSize + 1),
          boardSize: minBoardSize + 1,
          moves: 0),
      act: (bloc) => bloc.add(GameSizeDecreased()),
      expect: () => [
        isA<Game>()
            .having((g) => g.boardSize, "boardSize", equals(minBoardSize))
      ],
    );

    blocTest<GameBloc, Game>(
        "does not decrease the board size beyond bounds when GameSizeDecreased is added",
        build: () => gameBloc,
        seed: () => Game(
            pieces: generate(minBoardSize), boardSize: minBoardSize, moves: 0),
        act: (bloc) => bloc.add(GameSizeDecreased()),
        expect: () => []);

    blocTest<GameBloc, Game>(
      "moves a valid piece when GamePieceMoved is added",
      build: () => gameBloc,
      act: (bloc) {
        // Find first piece next to the empty spot
        final pieces = initialPieces;
        final empty = initialPieces
            .expand((row) => row)
            .firstWhere((piece) => piece.value == 0);
        for (var i = 0; i < pieces.length; i++) {
          for (var j = 0; j < pieces[i].length; j++) {
            if ((pieces[i][j].position.row == empty.position.row &&
                    (pieces[i][j].position.column - empty.position.column)
                            .abs() ==
                        1) ||
                (pieces[i][j].position.column == empty.position.column &&
                    (pieces[i][j].position.row - empty.position.row).abs() ==
                        1)) {
              bloc.add(GamePieceMoved(piece: pieces[i][j]));
              break;
            }
          }
        }
      },
      expect: () =>
          [isA<Game>().having((g) => g.moves, "moves", greaterThan(0))],
    );

    blocTest<GameBloc, Game>(
        "does not move an impossible piece when GamePieceMoved is added",
        build: () => gameBloc,
        act: (bloc) {
          // Find the first piece not next to the empty spot
          final pieces = initialPieces;
          final empty = initialPieces
              .expand((row) => row)
              .firstWhere((piece) => piece.value == 0);
          for (var i = 0; i < pieces.length; i++) {
            for (var j = 0; j < pieces[i].length; j++) {
              if ((pieces[i][j].position.row == empty.position.row &&
                      (pieces[i][j].position.column - empty.position.column)
                              .abs() !=
                          1) ||
                  (pieces[i][j].position.column == empty.position.column &&
                      (pieces[i][j].position.row - empty.position.row).abs() !=
                          1)) {
                bloc.add(GamePieceMoved(piece: pieces[i][j]));
                break;
              }
            }
          }
        },
        expect: () => []);

    blocTest<GameBloc, Game>(
      "activates the cheat and sets the pieces in correct order",
      build: () => gameBloc,
      act: (bloc) => bloc.add(GameCheatActivated()),
      expect: () => [isA<Game>().having((g) => g.isOver(), "isOver", isTrue)],
    );
  });
}
