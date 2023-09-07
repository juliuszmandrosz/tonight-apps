import 'package:common/extensions/extensions.dart';
import 'package:common/theme/dark_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_card.dart';

class UpcomingTonightEvents extends StatelessWidget {
  const UpcomingTonightEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final events = state.dashboardData.tonightEvents;
        return Column(
          children: [
            // TODO - add translation
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nadchodzące imprezy Tonight',
                  style: context.titleMedium.copyWithSecondaryColor(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 395,
              child: PageView.builder(
                padEnds: false,
                controller: PageController(
                  viewportFraction: events.length == 1 ? 1 : 0.85,
                ),
                itemCount: events.length,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: i == 0 ? 0 : 4,
                      right: i == events.length - 1 ? 0 : 4,
                    ),
                    child: TonightEventCard(event: events[i]),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
