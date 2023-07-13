import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';
import 'package:translations/translations.dart';

class EventDetailTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool isEntryFee;
  final Event? event;

  const EventDetailTile({
    required this.icon,
    required this.label,
    required this.value,
    this.isEntryFee = false,
    this.event,
    Key? key,
  })  : assert(isEntryFee && event != null || !isEntryFee,
            'Event must be provided when isEntryFee is true'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final showBuyTicketButton = isEntryFee && event!.areTicketsAvailableInApp;
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showBuyTicketButton) const SizedBox(height: 16),
          Center(
            child: FaIcon(
              icon,
              size: 40,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: value.isEmpty
                  ? SpinKitThreeBounce(
                      color: context.onSurfaceColor,
                      size: 18,
                    )
                  : AutoSizeText(
                      value,
                      maxLines: 2,
                      style: context.titleLarge,
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: showBuyTicketButton
                ? SizedBox(
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () async {
                        if (context.readAuthCubit.checkIfUserIsAnonymous()) {
                          await showSignInDialog(context);
                          return;
                        }
                        context.pushRoute(TicketCheckoutRoute(event: event!));
                      },
                      child: Text(
                        S().buyTicket,
                        style: context.bodyMedium.copyWith(
                          color: context.onSurfaceColor,
                        ),
                      ),
                    ),
                  )
                : AutoSizeText(
                    label.toLowerCase(),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
          ),
        ],
      ),
    );
  }
}
