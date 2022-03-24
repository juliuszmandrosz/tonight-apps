import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EditEventAlertDialog extends StatelessWidget {
  final Widget content;
  final String title;
  final VoidCallback onSubmitted;
  final bool isValueEmpty;

  const EditEventAlertDialog({
    required this.content,
    required this.title,
    required this.onSubmitted,
    required this.isValueEmpty,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      title: Text(title),
      actionsPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      contentPadding: const EdgeInsets.only(top: 20),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              S().cancel.toUpperCase(),
              style: theme.textTheme.bodyText1!.copyWith(
                color: theme.colorScheme.onTertiaryContainer,
              ),
            ),
          ),
        ),
        BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
          buildWhen: (previous, current) =>
              previous.editEventDetailsStatus != current.editEventDetailsStatus,
          builder: (context, state) {
            return state.editEventDetailsStatus.isSubmissionInProgress
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () => onSubmitted(),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        isValueEmpty
                            ? S().add.toUpperCase()
                            : S().edit.toUpperCase(),
                      ),
                    ),
                  );
          },
        ),
      ],
      content: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(20),
        child: content,
      ),
    );
  }
}
