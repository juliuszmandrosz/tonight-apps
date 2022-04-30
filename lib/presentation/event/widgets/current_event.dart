import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_scanner/presentation/event/widgets/refresh_icon.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class CurrentEvent extends StatelessWidget {
  final Event event;

  const CurrentEvent({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const SizedBox(width: 10),
                const Flexible(child: RefreshCurrentEventButton()),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () =>
                  AutoRouter.of(context).push(const ScannerRoute()),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(S().startScanning),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
