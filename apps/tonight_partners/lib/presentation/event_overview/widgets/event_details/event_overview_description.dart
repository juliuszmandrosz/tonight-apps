import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/dialogs/edit_event_description_dialog.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/delete_event_detail_button.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/show_edit_event_dialog_button.dart';
import 'package:translations/translations.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TonightPartnersHeadline(
                    text: S().description,
                    isSmallerVersion: true,
                  ),
                ),
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
                      style: context.titleMedium.copyWith(
                        color: context.secondaryColor,
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
