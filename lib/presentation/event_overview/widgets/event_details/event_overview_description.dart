import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_description_dialog.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_details/delete_event_detail_button.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_details/show_edit_event_dialog_button.dart';
import 'package:raver_translations/raver_translations.dart';

class EventOverviewDescription extends StatelessWidget {
  const EventOverviewDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
      buildWhen: (previous, current) => previous.event != current.event,
      builder: (context, state) {
        final upcomingEventCubit = context.read<UpcomingLiveEventCubit>();
        final description = state.event.getOrCrash().description;
        final isDescriptionEmpty = description == null || description.isEmpty;
        return Column(
          children: [
            Row(
              children: [
                RaverPartnersHeadline(text: S().description),
                const Spacer(),
                ShowEditEventDialogButton(
                  dialog: EditEventDescriptionDialog(blocContext: context),
                  isValueEmpty: isDescriptionEmpty,
                ),
                if (!isDescriptionEmpty)
                  DeleteEventDetailButton(
                    onDeleted: upcomingEventCubit.deleteDescription,
                  )
              ],
            ),
            if (!isDescriptionEmpty) const SizedBox(height: 20),
            if (!isDescriptionEmpty)
              Row(
                children: [
                  Flexible(
                    child: Text(
                      description,
                      style: context.subtitle1,
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
