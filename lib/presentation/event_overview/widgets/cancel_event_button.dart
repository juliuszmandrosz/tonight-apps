import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:raver_common/raver_common.dart';

class CancelEventButton extends StatelessWidget {
  const CancelEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () async {
              final result =
                  await context.showConfirmationDialogWithCustomMessage(
                S().confirmEventCancelation,
              );

              if (result ?? false) {
                context
                    .read<UpcomingLiveEventCubit>()
                    .proceedToPayForEventCancelation();
              }
            },
            child: Text(S().cancelEvent),
          ),
        ),
      ],
    );
  }
}
