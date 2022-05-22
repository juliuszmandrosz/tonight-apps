import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_scanner/presentation/event/widgets/refresh_icon.dart';

class CurrentEvent extends StatelessWidget {
  final Event event;

  const CurrentEvent({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: AutoSizeText(
                  event.eventName,
                  maxLines: 4,
                  textAlign: TextAlign.center,
                  style: context.headline5,
                ),
              ),
              const SizedBox(width: 10),
              const Flexible(child: RefreshCurrentEventButton()),
            ],
          ),
        ],
      ),
    );
  }
}
