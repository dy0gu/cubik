import "dart:convert";

import "package:cubik/logic/stats_bloc.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import "package:cubik/logic/profile_bloc.dart";
import "package:cubik/widgets/framed.dart";
import "package:fl_chart/fl_chart.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations locale = AppLocalizations.of(context)!;
    ThemeData theme = Theme.of(context);
    return Framed(
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Tooltip(
                    waitDuration: const Duration(seconds: 1),
                    verticalOffset: 35,
                    message: locale.back,
                    child: FloatingActionButton(
                      heroTag: null,
                      child: const Icon(Icons.arrow_back),
                      onPressed: () => context.go("/"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        BlocProvider(
          lazy: false,
          create: (context) => ProfileBloc(),
          child: BlocBuilder<ProfileBloc, Profile>(
            builder: (context, profile) {
              return Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: theme.colorScheme.outline,
                            width: 2,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: profile.base64Image.isNotEmpty
                              ? MemoryImage(base64Decode(profile.base64Image))
                              : null,
                          child: profile.base64Image.isEmpty
                              ? const Icon(Icons.person, size: 60)
                              : null,
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -10,
                        child: Tooltip(
                          message: locale.picture,
                          waitDuration: const Duration(seconds: 1),
                          child: ElevatedButton(
                            onPressed: () => context
                                .read<ProfileBloc>()
                                .add(ProfilePictureUploaded()),
                            child: const Icon(Icons.camera_alt),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 200,
                    child: Tooltip(
                      message: locale.username,
                      verticalOffset: 35,
                      waitDuration: const Duration(seconds: 1),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        controller: TextEditingController.fromValue(
                          TextEditingValue(
                              text: profile.username,
                              selection: TextSelection(
                                baseOffset: profile.username.length,
                                extentOffset: profile.username.length,
                              )),
                        ),
                        onChanged: (value) => context
                            .read<ProfileBloc>()
                            .add(ProfileUsernameChanged(value)),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 60),
        BlocProvider(
          lazy: false,
          create: (context) => StatisticsBloc(),
          child: BlocBuilder<StatisticsBloc, Statistics>(
              builder: (context, statistics) {
            return Wrap(
              spacing: 60,
              runSpacing: 60,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 600,
                      height: 250,
                      child: Stack(
                        children: [
                          if (statistics.entries.length < 2)
                            Padding(
                              padding: const EdgeInsets.all(60),
                              child: Center(
                                child: Text(
                                  textAlign: TextAlign.center,
                                  locale.notEnoughStatisticDataYet,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                          LineChart(
                            LineChartData(
                              minY: 0,
                              maxY: statistics.entries.length < 2
                                  ? null
                                  : (statistics.entries
                                                  .map((entry) => entry.moves)
                                                  .reduce(
                                                      (a, b) => a > b ? a : b)
                                                  .toDouble() *
                                              1.5 /
                                              10)
                                          .ceil() *
                                      10,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: statistics.entries.length < 2
                                      ? []
                                      : statistics.entries
                                          .asMap()
                                          .entries
                                          .map((entry) => FlSpot(
                                              entry.key.toDouble(),
                                              entry.value.moves.toDouble()))
                                          .toList(),
                                  isCurved: false,
                                  color: theme.colorScheme.primary,
                                  curveSmoothness: 0.2,
                                  barWidth: 3,
                                  isStrokeCapRound: true,
                                  belowBarData: BarAreaData(
                                    show: true,
                                    color: theme.colorScheme.primary
                                        .withOpacity(0.3),
                                  ),
                                ),
                              ],
                              lineTouchData: const LineTouchData(
                                touchTooltipData: LineTouchTooltipData(
                                  tooltipBgColor: Colors.transparent,
                                ),
                              ),
                              gridData: FlGridData(
                                show: true,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: theme.colorScheme.primary
                                        .withOpacity(0.4),
                                    strokeWidth: 1,
                                    dashArray: [5, 5],
                                  );
                                },
                                getDrawingVerticalLine: (value) {
                                  return FlLine(
                                    color: theme.colorScheme.primary
                                        .withOpacity(0.4),
                                    strokeWidth: 1,
                                    dashArray: [5, 5],
                                  );
                                },
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                topTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                bottomTitles: const AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  ),
                                ),
                                rightTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                        getTitlesWidget: (value, meta) =>
                                            const SizedBox.shrink(),
                                        showTitles: true,
                                        reservedSize: 45)),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    getTitlesWidget: (value, meta) =>
                                        statistics.entries.length < 2
                                            ? const SizedBox.shrink()
                                            : defaultGetTitle(value, meta),
                                    showTitles: true,
                                    reservedSize: 45,
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(
                                show: true,
                                border: Border(
                                  bottom: BorderSide(
                                    color: theme.colorScheme.outline,
                                    width: 1,
                                  ),
                                  left: BorderSide(
                                    color: theme.colorScheme.outline,
                                    width: 1,
                                  ),
                                  right: BorderSide(
                                    color: theme.colorScheme.outline,
                                    width: 1,
                                  ),
                                  top: BorderSide(
                                    color: theme.colorScheme.outline,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    if (statistics.entries.length > 2)
                      Text.rich(
                        TextSpan(
                          text: "${locale.statisticMoves}  ",
                          style: theme.textTheme.bodyLarge,
                          children: const [
                            WidgetSpan(
                              child: SizedBox(
                                  height: 35,
                                  child: Icon(
                                    Icons.move_down,
                                  )),
                              alignment: PlaceholderAlignment.middle,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                  ],
                ),
              ],
            );
          }),
        ),
      ]),
    );
  }
}
