import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/challenges/challenges_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/challenges/widgets/challenge_list_tile.dart';
import 'package:tonight/presentation/challenges/widgets/challenges_countdown_timer.dart';
import 'package:tonight/presentation/challenges/widgets/no_challenges_info.dart';
import 'package:tonight/presentation/challenges/widgets/previous_challenges_winners.dart';

class ChallengesPage extends HookWidget {
  const ChallengesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    return BlocProvider(
      create: (context) => getIt<ChallengesCubit>()..getChallenges(),
      child: BlocBuilder<ChallengesCubit, ChallengesState>(
        builder: (context, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return const SizedBox.shrink();
            case CubitStatus.loading:
              return const WaveLoadingIndicator();
            case CubitStatus.failure:
              return FailureInfo(
                retryCallback: context.read<ChallengesCubit>().getChallenges,
              );
            case CubitStatus.success:
              if (state.currentChallenges.isEmpty) {
                return const NoChallengesInfo();
              }
              final secondsLeft = state.currentChallenges.first.endDate
                  .difference(DateTime.now())
                  .inSeconds;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: RefreshIndicator(
                  onRefresh: () async =>
                      await context.read<ChallengesCubit>().getChallenges(),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        // Informacja o nagrodach i przekierowanie do sklepu
                        GestureDetector(
                          onTap: () => scrollController.animateTo(
                            scrollController.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          ),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF6B5FE7),
                                  Colors.purple.shade300,

                                  // Dodatkowy kolor gradientu
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Wyróżnij sie na imprezie.',
                                          style: context.titleLarge,
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          'Wykonuj wyzwania i zdobywaj nagrody!',
                                          style: context.titleLarge,
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              // TODO - add translation
                              "Poprzedni zwycięzcy",
                              style: context.titleLarge,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        if (state.previousChallenges.isNotEmpty)
                          PreviousChallengesWinners(
                            previousChallenges: state.previousChallenges,
                          ),

                        const SizedBox(height: 20),

                        ChallengesCountdownTimer(
                          secondsLeft: secondsLeft,
                          onTimerCompleted: () {
                            context.read<ChallengesCubit>().getChallenges();
                          },
                        ),
                        const SizedBox(height: 20),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.currentChallenges.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 20),
                          itemBuilder: (_, i) => ChallengeListTile(
                            challenge: state.currentChallenges[i],
                            index: i,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}
