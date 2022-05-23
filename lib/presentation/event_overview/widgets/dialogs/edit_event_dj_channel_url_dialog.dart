import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/form_inputs/dj_channel_url.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_alert_dialog.dart';
import 'package:raver_translations/raver_translations.dart';

class EditEventDjChannelUrlDialog extends HookWidget {
  final BuildContext blocContext;

  const EditEventDjChannelUrlDialog({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingEventCubit = blocContext.read<UpcomingLiveEventCubit>();
    final djChannelUrl =
        upcomingEventCubit.state.event.getOrCrash().urlLinks[djChannel];
    final isDjChannelUrlEmpty = djChannelUrl == null || djChannelUrl.isEmpty;
    final controller = useTextEditingController(text: djChannelUrl);

    return BlocProvider.value(
      value: upcomingEventCubit,
      child: BlocConsumer<UpcomingLiveEventCubit, UpcomingLiveEventState>(
        listener: (context, state) {
          if (state.editEventDetailsStatus.isSubmissionSuccess) {
            Navigator.of(context).pop();
          }
        },
        buildWhen: (previous, current) =>
            previous.djChannelUrl != current.djChannelUrl ||
            previous.editEventDetailsStatus != current.editEventDetailsStatus,
        builder: (context, state) {
          return EditEventAlertDialog(
            content: TextField(
              onChanged: (value) =>
                  upcomingEventCubit.onDjChannelUrlChanged(value),
              controller: controller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: S().djYoutubeChannel,
                errorText:
                    _getDjChannelUrlErrorMessage(upcomingEventCubit.state),
                errorMaxLines: 2,
              ),
            ),
            title: isDjChannelUrlEmpty
                ? S().addDjChannelYoutubeUrl
                : S().editDjChannelYoutubeUrl,
            onSubmitted: upcomingEventCubit.editDjChannelUrl,
            isValueEmpty: isDjChannelUrlEmpty,
          );
        },
      ),
    );
  }

  String? _getDjChannelUrlErrorMessage(UpcomingLiveEventState state) {
    if (state.djChannelUrl.valid ||
        state.editEventDetailsStatus != FormzStatus.invalid) {
      return null;
    }

    return djChannelUrlErrorMessages[state.djChannelUrl.error];
  }
}
