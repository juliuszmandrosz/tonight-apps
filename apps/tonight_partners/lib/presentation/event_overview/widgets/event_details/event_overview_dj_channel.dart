import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_dj_channel_url_dialog.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_details/delete_event_detail_button.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_details/show_edit_event_dialog_button.dart';
import 'package:raver_translations/raver_translations.dart';

class EventOverviewDjChannel extends StatelessWidget {
  const EventOverviewDjChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
      buildWhen: (previous, current) => previous.event != current.event,
      builder: (context, state) {
        final upcomingEventCubit = context.read<UpcomingLiveEventCubit>();
        final djChannelUrl = state.event.getOrCrash().urlLinks[djChannel];
        final isDjChannelUrlEmpty =
            djChannelUrl == null || djChannelUrl.isEmpty;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RaverPartnersHeadline(
                    text: S().djYoutubeChannel,
                    isSmallerVersion: true,
                  ),
                ),
                const SizedBox(width: 10),
                ShowEditEventDialogButton(
                  dialog: EditEventDjChannelUrlDialog(blocContext: context),
                  isValueEmpty: isDjChannelUrlEmpty,
                ),
                if (!isDjChannelUrlEmpty)
                  DeleteEventDetailButton(
                    onDeleted: upcomingEventCubit.deleteDjChannelUrl,
                  ),
              ],
            ),
            if (!isDjChannelUrlEmpty) const SizedBox(height: 20),
            if (!isDjChannelUrlEmpty)
              Row(
                children: [
                  Flexible(
                    child: RaverHyperLink(
                      url: djChannelUrl,
                      label: Text(
                        djChannelUrl,
                        style: context.subtitle1.copyWith(
                          color: context.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            const Divider(thickness: 2),
          ],
        );
      },
    );
  }
}
