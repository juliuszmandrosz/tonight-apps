import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/typography_extensions.dart';
import 'package:raver_partners/presentation/core/raver_partners_headline.dart';
import 'package:raver_partners/presentation/event_overview/widgets/dialogs/edit_event_name_dialog.dart';
import 'package:raver_partners/presentation/event_overview/widgets/event_details/show_edit_event_dialog_button.dart';
import 'package:raver_translations/raver_translations.dart';

class EventOverviewEventName extends StatelessWidget {
  const EventOverviewEventName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaverPartnersHeadline(text: S().eventName),
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
                    style: context.subtitle1,
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
