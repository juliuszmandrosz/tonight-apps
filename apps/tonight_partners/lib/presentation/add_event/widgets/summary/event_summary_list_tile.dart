import 'package:flutter/material.dart';
import 'package:tonight_partners/application/add_event/add_event_step.dart';
import 'package:tonight_partners/presentation/add_event/widgets/summary/event_summary_switch_step_button.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_headline.dart';

class EventSummaryListTile extends StatelessWidget {
  final String title;
  final Widget subtitle;
  final AddEventStep step;

  const EventSummaryListTile({
    required this.title,
    required this.subtitle,
    required this.step,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TonightPartnersHeadline(
            text: title,
            isSmallerVersion: true,
          ),
          EventSummarySwitchStepButton(step: step),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Align(alignment: Alignment.centerLeft, child: subtitle),
      ),
    );
  }
}
