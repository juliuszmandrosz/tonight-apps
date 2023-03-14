import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/dialogs/edit_event_name_dialog.dart';
import 'package:tonight_partners/presentation/event_overview/widgets/event_details/show_edit_event_dialog_button.dart';
import 'package:translations/translations.dart';

class EventOverviewEventName extends StatelessWidget {
  const EventOverviewEventName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TonightPartnersHeadline(
                text: S().eventName,
                isSmallerVersion: true,
              ),
            ),
            ShowEditEventDialogButton(
              dialog: EditEventNameDialog(blocContext: context),
              isValueEmpty: false,
            ),
          ],
        ),
        const SizedBox(height: 20),
        BlocBuilder<UpcomingLiveEventCubit, UpcomingLiveEventState>(
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: Text(
                    state.event.getOrCrash().eventName,
                    style: context.subtitle1.copyWith(
                      color: context.secondaryColor,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 20),
        const Divider(thickness: 2),
      ],
    );
  }
}
