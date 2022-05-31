import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

class AddEventStepsButtons extends StatelessWidget {
  const AddEventStepsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              bottom: 0,
              child: OutlinedButton(
                onPressed: state.currentStep.index > 0
                    ? () => context.read<AddEventCubit>().decrementStep()
                    : null,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(S().back),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: OutlinedButton(
                onPressed: () => context.read<AddEventCubit>().incrementStep(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(S().next),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
