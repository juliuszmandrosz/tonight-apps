import 'package:common/extensions/typography_extensions.dart';
import 'package:common/theme/dark_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/social_media_row.dart';
import 'package:tonight/presentation/dashboard/tonight_events_from_venues_widgets/tonight_event_card.dart';
import 'package:translations/translations.dart';

class UpcomingTonightEvents extends StatelessWidget {
  const UpcomingTonightEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final events = state.dashboardData.tonightEvents;
        return Column(
          children: [
            if (events.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    // TODO - add translations
                    'For you',
                    style: context.titleSmall.copyWithSecondaryColor(),
                  ),
                ),
              ),
            if (events.isNotEmpty) const SizedBox(height: 12),
            events.isNotEmpty
                ? SizedBox(
                    height: 360,
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
                  )
                : Column(
                    children: [
                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFF6B5FE7),
                              Colors.purple.shade300,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S().weArePreparing,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 4.0,
                                      color: Colors.black.withOpacity(0.25),
                                      offset: Offset(2.0, 2.0),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                S().nextEventForYou,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 4.0,
                                      color: Colors.black.withOpacity(0.25),
                                      offset: const Offset(2.0, 2.0),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                S().followUs,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 2.0,
                                      color: Colors.black.withOpacity(0.15),
                                      offset: const Offset(1.0, 1.0),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              TonightSocialMediaRow(
                                colors: [
                                  Colors.purple.shade100,
                                  Colors.white,
                                ],
                                iconSize: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ],
        );
      },
    );
  }
}
