import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_partners/application/add_event/form_inputs/description.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_alert_dialog.dart';
import 'package:raver_translations/raver_translations.dart';

class EditEventDescriptionDialog extends HookWidget {
  final BuildContext blocContext;

  const EditEventDescriptionDialog({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingEventCubit = blocContext.read<UpcomingLiveEventCubit>();
    final description = upcomingEventCubit.state.event.getOrCrash().description;
    final isDescriptionEmpty = description == null || description.isEmpty;
    final controller = useTextEditingController(text: description);

    return BlocProvider.value(
      value: upcomingEventCubit,
      child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
        listener: (context, state) {
          if (state.editEventDetailsStatus.isSubmissionSuccess ||
              state.editEventDetailsStatus.isSubmissionFailure) {
            Navigator.of(context).pop();
          }
        },
        buildWhen: (previous, current) =>
            previous.description != current.description ||
            previous.editEventDetailsStatus != current.editEventDetailsStatus,
        builder: (context, state) {
          return EditEventAlertDialog(
            content: TextField(
              onChanged: (value) =>
                  upcomingEventCubit.onDescriptionChanged(value),
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                labelText: S().description,
                errorText:
                    _getDescriptionErrorMessage(upcomingEventCubit.state),
                errorMaxLines: 2,
              ),
            ),
            title:
                isDescriptionEmpty ? S().addDescription : S().editDescription,
            onSubmitted: upcomingEventCubit.editDescription,
            isValueEmpty: isDescriptionEmpty,
          );
        },
      ),
    );
  }

  String? _getDescriptionErrorMessage(UpcomingLiveEventState state) {
    if (state.description.valid ||
        state.editEventDetailsStatus != FormzStatus.invalid) {
      return null;
    }

    return descriptionErrorMessages[state.description.error];
  }
}
