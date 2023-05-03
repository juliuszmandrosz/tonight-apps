import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class PostponeEventButton extends StatelessWidget {
  const PostponeEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingLiveEventState = context.read<UpcomingLiveEventCubit>().state;
    return OutlinedButton.icon(
      onPressed: () => context.pushRoute(
        PostponeEventRoute(
          event: upcomingLiveEventState.event.getOrCrash(),
        ),
      ),
      label: Text(S().postponeEvent),
      icon: const FaIcon(
        FontAwesomeIcons.calendar,
        size: 20,
      ),
    );
  }
}
