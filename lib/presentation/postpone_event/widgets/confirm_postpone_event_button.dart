import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ConfirmEventPostponeButton extends StatelessWidget {
  const ConfirmEventPostponeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          final postponeEventCubit = context.read<PostponeEventCubit>();

          if (!await postponeEventCubit.validateDateTimeRange()) return;

          postponeEventCubit.proceedToPayForEventPostpone();
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(S().postpone),
        ),
      ),
    );
  }
}
