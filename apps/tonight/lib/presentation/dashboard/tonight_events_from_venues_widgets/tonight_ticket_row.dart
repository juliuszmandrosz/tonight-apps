import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/application/dashboard/models/tonight_event_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';
import 'package:translations/translations.dart';

class TonightTicketRow extends StatelessWidget {
  final TonightEvent event;

  const TonightTicketRow({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (context.readAuthCubit.checkIfUserIsAnonymous()) {
          await showSignInDialog(context);
          return;
        }
        context.pushRoute(
          TicketCheckoutRoute(event: event.toDomain()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12,
          top: 4,
          right: 12,
          bottom: 8,
        ),
        child: Row(
          children: [
            FaIcon(
              FontAwesomeIcons.ticket,
              size: 20,
              color: context.secondaryColor,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                '${S().ticketsAvailableInAppFor} ${event.price}${event.currency}',
                style: context.labelSmall.copyWith(
                  color: context.secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
