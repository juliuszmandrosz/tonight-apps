import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/application/postpone_event/postpone_event_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/core/ticket_logo_animation.dart';
import 'package:raver_partners/presentation/postpone_event/widgets/confirm_postpone_event_button.dart';
import 'package:raver_partners/presentation/postpone_event/widgets/current_end_date_input.dart';
import 'package:raver_partners/presentation/postpone_event/widgets/current_start_date_input.dart';
import 'package:raver_translations/raver_translations.dart';

class PostponeEventPage extends StatelessWidget {
  final Event event;

  const PostponeEventPage({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostponeEventCubit>(
        param1: context.read<EventNotifierCubit>(),
      )..addEventToState(event),
      child: LoaderOverlay(
        overlayColor: context.shadowColor,
        overlayWidget: const TicketLogoAnimation(),
        overlayOpacity: .7,
        useDefaultLoading: false,
        child: Scaffold(
          appBar: RaverPartnersAppBar(title: S().postponeEvent),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: BlocConsumer<PostponeEventCubit, PostponeEventState>(
              listener: (context, state) {
                state.errorMessage.fold(
                  () => null,
                  (message) => context.showSnackbarMessage(message),
                );

                state.postponeEventStatus.isSubmissionInProgress
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (state.postponeEventStatus.isSubmissionSuccess) {
                  context.router.popUntilRoot();
                  context.showSnackbarMessage(S().eventPostponedSuccessfully);
                }
              },
              builder: (context, state) {
                return Column(
                  children: const [
                    SizedBox(height: 10),
                    CurrentStartDateInput(),
                    SizedBox(height: 20),
                    CurrentEndDateInput(),
                    Spacer(),
                    ConfirmEventPostponeButton(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
