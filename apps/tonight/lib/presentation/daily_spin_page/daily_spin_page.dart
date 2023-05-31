import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/daily_spin/daily_spin_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/daily_spin_page/widgets/raver_fortune_wheel.dart';

class DailySpinPage extends StatelessWidget {
  const DailySpinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<DailySpinCubit>()..getAvailableRewards(),
        child: BlocListener<DailySpinCubit, DailySpinState>(
          listener: (context, state) {
            state.snackbarMessage.fold(
              () {},
              (message) => context.showSnackbarMessage(message),
            );
          },
          child: BlocBuilder<DailySpinCubit, DailySpinState>(
            builder: (context, state) {
              if (state.getRewardsStatus.isLoading()) {
                return const WaveLoadingIndicator();
              }

              if (state.getRewardsStatus.isFailure()) {
                return FailureInfo(
                  retryCallback: () =>
                      context.read<DailySpinCubit>().getAvailableRewards(),
                );
              }

              return const SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: RaverFortuneWheel(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
