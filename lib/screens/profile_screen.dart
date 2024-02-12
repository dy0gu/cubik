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
                  FloatingActionButton(
                    heroTag: null,
                    child: const Icon(Icons.arrow_back),
                    onPressed: () => context.go("/"),
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
                        child: ElevatedButton(
                          onPressed: () => context
                              .read<ProfileBloc>()
                              .add(ProfilePictureUploaded()),
                          child: const Icon(Icons.camera_alt),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 200,
                    child: TextField(
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
                      width: 500,
                      height: 200,
                      child: Stack(
                        children: [
                          statistics.previousGameMoves.isEmpty
                              ? Center(
                                  child: Text(
                                    "${locale.noDataYet}!",
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                )
                              : const SizedBox(),
                          BarChart(
                            BarChartData(
                              barGroups: statistics.previousGameMoves
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                return BarChartGroupData(
                                  x: entry.key,
                                  barRods: [
                                    BarChartRodData(
                                      toY: entry.value.toDouble(),
                                      color: theme.colorScheme.primary,
                                    ),
                                  ],
                                );
                              }).toList(),
                              barTouchData: BarTouchData(
                                touchTooltipData: BarTouchTooltipData(
                                  tooltipBgColor: Colors.transparent,
                                ),
                              ),
                              gridData: FlGridData(
                                show: false,
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
                              titlesData: const FlTitlesData(
                                show: true,
                                topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false)),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: false,
                                  ),
                                ),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 60,
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
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
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
        const SizedBox(height: 30),
      ]),
    );
  }
}
