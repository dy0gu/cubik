import "package:confetti/confetti.dart";
import "package:cubik/logic/stats_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:cubik/widgets/framed.dart";
import "package:cubik/logic/game_bloc.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:share_plus/share_plus.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations locale = AppLocalizations.of(context)!;
    ThemeData theme = Theme.of(context);
    ConfettiController confettiControllerLeft =
        ConfettiController(duration: const Duration(seconds: 5));
    ConfettiController confettiControllerRight =
        ConfettiController(duration: const Duration(seconds: 5));
    return Framed(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    FloatingActionButton(
                        heroTag: null,
                        child: const Icon(Icons.settings),
                        onPressed: () => context.go("/settings")),
                    const SizedBox(width: 15),
                    FloatingActionButton(
                        heroTag: null,
                        child: const Icon(Icons.info),
                        onPressed: () => showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text(locale.helpTitle),
                                  content: Text(
                                      "${locale.helpBodyFirst}\n${locale.helpBodySecond}"),
                                  actionsAlignment: MainAxisAlignment.center,
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Icon(
                                          Icons.close,
                                          color: theme.colorScheme.primary,
                                        )),
                                  ],
                                ))),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Row(
                children: [
                  FloatingActionButton(
                      heroTag: null,
                      child: const Icon(Icons.person),
                      onPressed: () => context.go("/profile")),
                ],
              ),
            ],
          ),
          const SizedBox(height: 90),
          BlocProvider(
            lazy: false,
            create: (context) => StatisticsBloc(),
            child: BlocProvider(
              lazy: false,
              create: (context) => GameBloc(),
              child: BlocListener<GameBloc, Game>(
                listener: (context, game) {
                  if (game.isOver()) {
                    context
                        .read<StatisticsBloc>()
                        .add(StatisticsGameRecorded(moves: game.moves));

                    confettiControllerLeft.play();
                    confettiControllerRight.play();

                    Future.delayed(const Duration(milliseconds: 500), () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: theme.colorScheme.primaryContainer,
                        content: Text.rich(
                          TextSpan(
                            text:
                                "You won on a ${game.size}x${game.size} board using ${game.moves} ${game.moves == 1 ? "move" : "moves"}!",
                            style: theme.textTheme.bodyLarge,
                            children: [
                              const WidgetSpan(child: SizedBox(width: 5)),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: SizedBox(
                                  height: 35,
                                  width: 40,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(35),
                                    onTap: () => Share.share(
                                        subject:
                                            "My most recent Cubik victory!",
                                        "I won a game of Cubik on a ${game.size}x${game.size} board using only ${game.moves} ${game.moves == 1 ? "move" : "moves"}! See if you can do better at cubik.win, or using the app."),
                                    child: const Icon(Icons.share),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ));
                    });
                  }
                },
                child: BlocBuilder<GameBloc, Game>(
                  builder: (context, game) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: ConfettiWidget(
                                minimumSize: const Size(5, 5),
                                maximumSize: const Size(10, 10),
                                blastDirection: 3.14 * 2,
                                confettiController: confettiControllerLeft)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: ConfettiWidget(
                                minimumSize: const Size(5, 5),
                                maximumSize: const Size(10, 10),
                                blastDirection: 3.14,
                                confettiController: confettiControllerRight)),
                        Column(
                            children: game.pieces.map((row) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: row.map((piece) {
                              return Padding(
                                padding: const EdgeInsets.all(2),
                                child: Material(
                                  elevation: 6,
                                  borderRadius:
                                      BorderRadius.circular(66 / row.length),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: theme.colorScheme.background,
                                  surfaceTintColor: Colors.transparent,
                                  type: MaterialType.card,
                                  child: Animate(
                                    value: -piece.value.toDouble().abs(),
                                    effects: const [ShakeEffect()],
                                    child: piece.value == 0
                                        ? Container(
                                            decoration: BoxDecoration(
                                              color: theme
                                                  .colorScheme.primaryContainer
                                                  .withOpacity(0.5),
                                              border: Border.all(
                                                color: theme
                                                    .colorScheme.background,
                                                width: 0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      66 / row.length),
                                            ),
                                            width: 270 / row.length,
                                            height: 270 / row.length,
                                          )
                                        : GestureDetector(
                                            onPanStart: (details) => context
                                                .read<GameBloc>()
                                                .add(GamePieceMoved(
                                                    piece: piece)),
                                            onTap: () => context
                                                .read<GameBloc>()
                                                .add(GamePieceMoved(
                                                    piece: piece)),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: theme.colorScheme
                                                    .primaryContainer,
                                                border: Border.all(
                                                  color:
                                                      piece.isCorrect(game.size)
                                                          ? theme.colorScheme
                                                              .primary
                                                          : theme.colorScheme
                                                              .background,
                                                  width:
                                                      piece.isCorrect(game.size)
                                                          ? 2
                                                          : 0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        66 / row.length),
                                              ),
                                              width: 270 / row.length,
                                              height: 270 / row.length,
                                              child: Center(
                                                child: Text(
                                                    piece.value.toString(),
                                                    style: theme
                                                        .textTheme.bodyMedium!
                                                        .copyWith(
                                                      fontSize: 270 /
                                                          row.length /
                                                          2.5,
                                                    )),
                                              ),
                                            ),
                                          ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        }).toList()),
                        const SizedBox(height: 30),
                        Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 30,
                          runSpacing: 15,
                          children: [
                            ElevatedButton(
                                onPressed: () => context
                                    .read<GameBloc>()
                                    .add(GameShuffled()),
                                child: const Icon(Icons.shuffle)),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
