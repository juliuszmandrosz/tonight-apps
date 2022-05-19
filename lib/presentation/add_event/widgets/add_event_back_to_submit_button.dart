import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/add_event_step.dart';
import 'package:raver_translations/generated/l10n.dart';

class AddEventBackToSubmitButton extends StatelessWidget {
  const AddEventBackToSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isSubmitEnabled != current.isSubmitEnabled ||
          previous.currentStep != current.currentStep,
      builder: (context, state) {
        return state.isSubmitEnabled &&
                state.currentStep != AddEventStep.summary
            ? Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(S().backToSummary),
                    ),
                    onPressed: () =>
                        context.read<AddEventCubit>().backToSummary(),
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
