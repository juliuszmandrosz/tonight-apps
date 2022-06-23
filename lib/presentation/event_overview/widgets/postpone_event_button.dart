import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/upcoming_live_event/upcoming_live_event_cubit.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class PostponeEventButton extends StatelessWidget {
  const PostponeEventButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final upcomingLiveEventState = context.read<UpcomingLiveEventCubit>().state;
    return Column(
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          child: ElevatedButton(
            onPressed: () => context.pushRoute(
              PostponeEventRoute(
                event: upcomingLiveEventState.event.getOrCrash(),
              ),
            ),
            child: Text(S().postponeEvent),
          ),
        ),
      ],
    );
  }
}
