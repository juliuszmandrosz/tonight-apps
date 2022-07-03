import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_reward/add_reward_cubit.dart';

class AddRewardButton extends StatelessWidget {
  const AddRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddRewardCubit, AddRewardState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () => context.read<AddRewardCubit>().addReward(),
          child: state.status.isSubmissionInProgress
              ? SpinKitThreeBounce(
                  color: context.onSurfaceColor,
                  size: 16,
                )
              : const FaIcon(Icons.add),
        );
      },
    );
  }
}
