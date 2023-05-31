import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonight/application/daily_spin/daily_spin_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class RaverFortuneWheel extends HookWidget {
  const RaverFortuneWheel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final rewards =
        context.read<DailySpinCubit>().state.availableRewards.rewards;

    final selected = useStreamController<int>();
    final selectedValue = useState(0);
    final isAnimating = useState(false);

    void handleRoll() {
      if (selectedValue.value > 0) return;
      if (isAnimating.value) return;
      final randomValue = Random().nextInt(rewards.length);
      selected.add(randomValue);
      selectedValue.value = rewards.elementAt(randomValue);
    }

    return BlocBuilder<DailySpinCubit, DailySpinState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: Text(
                state.spinStatus.isSuccess()
                    ? '${S().congratsYouWin} ${state.reward.getOrCrash()} '
                        '${S().raverCoinsReward(state.reward.getOrCrash())}!'
                    : '${S().youGetDailySpin}.\n'
                        '${S().spinAndWinCoins}!',
                style: context.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 420,
              child: FortuneWheel(
                curve: Curves.linear,
                duration: const Duration(seconds: 4),
                rotationCount: 8,
                animateFirst: false,
                onAnimationStart: () => isAnimating.value = true,
                onAnimationEnd: () async {
                  isAnimating.value = false;
                  await context
                      .read<DailySpinCubit>()
                      .submitDailySpin(selectedValue.value);
                },
                selected: selected.stream,
                onFling: handleRoll,
                indicators: [
                  FortuneIndicator(
                    alignment: Alignment.topCenter,
                    child: TriangleIndicator(
                      color: context.hintColor,
                    ),
                  ),
                ],
                items: [
                  for (var i = 0; i < rewards.length; i++)
                    FortuneItem(
                      style: FortuneItemStyle(
                        color: i.isEven
                            ? context.secondaryColor.darken(.1)
                            : context.secondaryColor,
                        borderColor: context.surfaceColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            '${rewards.elementAt(i)}x ',
                            style: context.titleLarge.copyWith(
                              color: context.onSecondary,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/raver_coin.svg',
                            semanticsLabel: 'Raver Coin',
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 300,
              height: 50,
              child: state.spinStatus.isLoading()
                  ? const WaveLoadingIndicator()
                  : state.spinStatus.isSuccess()
                      ? ElevatedButton(
                          onPressed: () =>
                              context.pushRoute(const WelcomeLoaderRoute()),
                          child: Text(S().next),
                        )
                      : ElevatedButton(
                          onPressed: isAnimating.value ? null : handleRoll,
                          child: Text(S().spin),
                        ),
            ),
          ],
        );
      },
    );
  }
}
