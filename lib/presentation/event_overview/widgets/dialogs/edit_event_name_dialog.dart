import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/form_inputs/event_name.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_alert_dialog.dart';
import 'package:raver_translations/raver_translations.dart';

class EditEventNameDialog extends HookWidget {
  final BuildContext blocContext;

  const EditEventNameDialog({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingEventCubit = blocContext.read<UpcomingLiveEventCubit>();
    final eventName = upcomingEventCubit.state.event.getOrCrash().eventName;
    final controller = useTextEditingController(text: eventName);

    upcomingEventCubit.onEventNameChanged(eventName);

    return BlocProvider.value(
      value: upcomingEventCubit,
      child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
        listener: (context, state) {
          if (state.editEventDetailsStatus.isSubmissionInProgress) {
            Navigator.of(context).pop();
          }
        },
        buildWhen: (previous, current) =>
            previous.eventName != current.eventName ||
            previous.editEventDetailsStatus != current.editEventDetailsStatus,
        builder: (context, state) {
          return EditEventAlertDialog(
            content: TextField(
              onChanged: (value) =>
                  upcomingEventCubit.onEventNameChanged(value),
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: S().eventName,
                errorText: _getEventNameErrorMessage(upcomingEventCubit.state),
                errorMaxLines: 2,
              ),
            ),
            title: S().editEventName,
            onSubmitted: upcomingEventCubit.editEventName,
            isValueEmpty: false,
          );
        },
      ),
    );
  }

  String? _getEventNameErrorMessage(UpcomingLiveEventState state) {
    if (state.eventName.valid ||
        state.editEventDetailsStatus != FormzStatus.invalid) {
      return null;
    }

    return eventNameErrorMessages[state.eventName.error];
  }
}
