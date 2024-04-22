import "package:confetti/confetti.dart";
import "package:cubik/logic/profile_bloc.dart";
import "package:cubik/logic/stats_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:go_router/go_router.dart";
import "package:cubik/widgets/framed.dart";
import "package:cubik/logic/game_bloc.dart";
import "package:flutter_animate/flutter_animate.dart";
import "package:share_plus/share_plus.dart";
import "package:url_launcher/url_launcher.dart";
import "package:simple_icons/simple_icons.dart";

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
                    Tooltip(
                      waitDuration: const Duration(seconds: 1),
                      verticalOffset: 35,
                      message: locale.settings,
                      child: FloatingActionButton(
                          heroTag: null,
                          child: const Icon(Icons.settings),
                          onPressed: () => context.go("/settings")),
                    ),
                    const SizedBox(width: 15),
                    Tooltip(
                      waitDuration: const Duration(seconds: 1),
                      verticalOffset: 35,
                      message: locale.help,
                      child: FloatingActionButton(
                          heroTag: null,
                          child: const Icon(Icons.info),
                          onPressed: () => showDialog(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text(locale.helpTitle),
                                    content: Text(
                                      """
${locale.helpBodyFirst}\n
${locale.helpBodySecond}\n
${locale.helpBodyThird}\n
${locale.helpBodyFourth}\n""",
                                    ),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: [
                                      Tooltip(
                                        waitDuration:
                                            const Duration(seconds: 1),
                                        message: locale.back,
                                        child: ElevatedButton(
                                            onPressed: () =>
                                                Navigator.pop(context),
                                            child: const Icon(
                                              Icons.arrow_back,
                                            )),
                                      ),
                                      Tooltip(
                                          waitDuration:
                                              const Duration(seconds: 1),
                                          message: "Github",
                                          child: ElevatedButton(
                                              child: const Icon(
                                                  SimpleIcons.github),
                                              onPressed: () async {
                                                if (!await launchUrl(
                                                    Uri.parse(
                                                        "https://github.com/dy0gu/Cubik"),
                                                    mode: LaunchMode
                                                        .platformDefault,
                                                    webOnlyWindowName:
                                                        "_blank")) {}
                                              })),
                                    ],
                                  ))),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Row(
                children: [
                  Tooltip(
                    waitDuration: const Duration(seconds: 1),
                    verticalOffset: 35,
                    message: locale.profile,
                    child: FloatingActionButton(
                        heroTag: null,
                        child: const Icon(Icons.person),
                        onPressed: () => context.go("/profile")),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 90),
          BlocBuilder<StatisticsBloc, Statistics>(
              builder: (context, statistics) {
            return BlocProvider(
              lazy: true,
              create: (context) => GameBloc(),
              child: BlocListener<GameBloc, Game>(
                listener: (context, game) {
                  if (game.isOver()) {
                    confettiControllerLeft.play();
                    confettiControllerRight.play();

                    context.read<StatisticsBloc>().add(StatisticsGameRecorded(
                        moves: game.moves, boardSize: game.boardSize));

                    // Hide current snackbar if any is visible
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    Future.delayed(const Duration(milliseconds: 500), () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: const Duration(seconds: 8),
                        backgroundColor: theme.colorScheme.primaryContainer,
                        content: Text.rich(
                          TextSpan(
                            text: locale.winPopup(game.moves),
                            style: theme.textTheme.bodyLarge,
                            children: [
                              const WidgetSpan(child: SizedBox(width: 5)),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Tooltip(
                                  waitDuration: const Duration(seconds: 1),
                                  message: locale.share,
                                  child: SizedBox(
                                    height: 35,
                                    width: 40,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(35),
                                      onTap: () => Share.share(
                                        subject: locale.shareBody(game.moves),
                                        locale.shareBody(game.moves),
                                      ),
                                      child: const Icon(Icons.share),
                                    ),
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
                                child: Animate(
                                  value: -piece.value.toDouble().abs(),
                                  effects: const [ShakeEffect()],
                                  child: Material(
                                    elevation: 1,
                                    borderRadius:
                                        BorderRadius.circular(66 / row.length),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: theme.colorScheme.background,
                                    surfaceTintColor: Colors.transparent,
                                    type: MaterialType.card,
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
                                        : Material(
                                            color: theme
                                                .colorScheme.primaryContainer,
                                            child: GestureDetector(
                                              onPanEnd: (details) {
                                                context.read<GameBloc>().add(
                                                    GamePieceMoved(
                                                        piece: piece));
                                              },
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                onTap: () {
                                                  context.read<GameBloc>().add(
                                                      GamePieceMoved(
                                                          piece: piece));
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: piece.isCorrect(
                                                              game.boardSize)
                                                          ? theme.colorScheme
                                                              .primary
                                                          : theme.colorScheme
                                                              .background,
                                                      width: piece.isCorrect(
                                                              game.boardSize)
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
                                                        style: theme.textTheme
                                                            .bodyMedium!
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
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        }).toList()),
                        const SizedBox(height: 30),
                        Wrap(
                          spacing: 30,
                          runSpacing: 15,
                          alignment: WrapAlignment.center,
                          children: [
                            Tooltip(
                              waitDuration: const Duration(seconds: 1),
                              message: locale.shuffle,
                              child: ElevatedButton(
                                  onPressed: () => context
                                      .read<GameBloc>()
                                      .add(GameShuffled()),
                                  child: const Icon(Icons.shuffle)),
                            ),
                            Tooltip(
                              waitDuration: const Duration(seconds: 1),
                              message: locale.increase,
                              child: ElevatedButton(
                                  onPressed: () => context
                                      .read<GameBloc>()
                                      .add(GameSizeIncreased()),
                                  child: const Icon(Icons.add)),
                            ),
                            Tooltip(
                              waitDuration: const Duration(seconds: 1),
                              message: locale.decrease,
                              child: ElevatedButton(
                                  onPressed: () => context
                                      .read<GameBloc>()
                                      .add(GameSizeDecreased()),
                                  child: const Icon(Icons.remove)),
                            ),
                            BlocProvider(
                              lazy: true,
                              create: (context) => ProfileBloc(),
                              child: BlocBuilder<ProfileBloc, Profile>(
                                builder: (context, profile) => Visibility(
                                  replacement: Container(),
                                  visible: profile.isCheater(),
                                  child: Tooltip(
                                    waitDuration: const Duration(seconds: 1),
                                    message: locale.cheat,
                                    child: ElevatedButton(
                                        onPressed: () => context
                                            .read<GameBloc>()
                                            .add(GameCheatActivated()),
                                        child: const Icon(Icons.lightbulb)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
