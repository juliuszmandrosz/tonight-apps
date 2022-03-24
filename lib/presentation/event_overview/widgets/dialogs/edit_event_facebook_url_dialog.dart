import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/form_inputs/facebook_url.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_alert_dialog.dart';
import 'package:raver_translations/raver_translations.dart';

class EditEventFacebookUrlDialog extends HookWidget {
  final BuildContext blocContext;

  const EditEventFacebookUrlDialog({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingEventCubit = blocContext.read<UpcomingLiveEventCubit>();
    final facebookUrl =
        upcomingEventCubit.state.event.getOrCrash().urlLinks[facebook];
    final isFacebookUrlEmpty = facebookUrl == null || facebookUrl.isEmpty;
    final controller = useTextEditingController(text: facebookUrl);

    return BlocProvider.value(
      value: upcomingEventCubit,
      child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
        listener: (context, state) {
          if (state.editEventDetailsStatus.isSubmissionSuccess) {
            Navigator.of(context).pop();
          }
        },
        buildWhen: (previous, current) =>
            previous.facebookUrl != current.facebookUrl ||
            previous.editEventDetailsStatus != current.editEventDetailsStatus,
        builder: (context, state) {
          return EditEventAlertDialog(
            content: TextField(
              onChanged: (value) =>
                  upcomingEventCubit.onFacebookUrlChanged(value),
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: S().facebookEvent,
                errorText:
                    _getFacebookUrlErrorMessage(upcomingEventCubit.state),
                errorMaxLines: 2,
              ),
            ),
            title:
                isFacebookUrlEmpty ? S().addFacebookUrl : S().editFacebookUrl,
            onSubmitted: upcomingEventCubit.editFacebookUrl,
            isValueEmpty: isFacebookUrlEmpty,
          );
        },
      ),
    );
  }

  String? _getFacebookUrlErrorMessage(UpcomingLiveEventState state) {
    if (state.facebookUrl.valid ||
        state.editEventDetailsStatus != FormzStatus.invalid) {
      return null;
    }

    return facebookUrlErrorMessages[state.facebookUrl.error];
  }
}
