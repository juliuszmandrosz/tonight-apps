import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/reward_list/reward_list_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/rewards/widgets/reward_list_for_required_entries.dart';
import 'package:raver_translations/raver_translations.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RewardListCubit>()..getRewards(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: BlocConsumer<RewardListCubit, RewardListState>(
          listenWhen: (previous, current) =>
              previous.errorMessage != current.errorMessage,
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) => context.showSnackbarMessage(error),
            );
          },
          builder: (context, state) {
            if (state.initialStatus.isLoading()) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.initialStatus.isFailure()) {
              return Center(
                child: Text(S().errorLoadingRewards),
              );
            }

            return state.rewards.isEmpty
                ? Center(
                    child: Text(S().rewards(0)),
                  )
                : ListView(
                    children: [
                      for (var entries in state.rewards
                          .map((reward) => reward.requiredEntries)
                          .toSet())
                        RewardListForRequiredEntries(
                          requiredEntries: entries,
                          rewards: state.rewards
                              .where(
                                  (reward) => reward.requiredEntries == entries)
                              .toList(),
                        )
                    ],
                  );
          },
        ),
      ),
    );
  }
}
