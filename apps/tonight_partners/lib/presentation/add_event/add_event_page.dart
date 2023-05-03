import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:tonight_partners/injection.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_button.dart';
import 'package:tonight_partners/presentation/add_event/widgets/add_event_steps.dart';
import 'package:tonight_partners/presentation/core/tonight_partners_app_bar.dart';
import 'package:translations/translations.dart';

class AddEventPage extends StatelessWidget {
  final BuildContext blocContext;

  const AddEventPage({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isEventAddedSuccessfully = false;

    return BlocProvider.value(
      value: blocContext.read<ClubInfoCubit>(),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: WillPopScope(
          onWillPop: () async {
            if (isEventAddedSuccessfully) {
              return true;
            }

            final result =
                await context.showConfirmationDialogWithCustomMessage(
                    S().confirmLeavingPage);

            return result ?? false;
          },
          child: BlocProvider(
            create: (context) => getIt<AddEventCubit>(
              param1: context.read<EventNotifierCubit>(),
              param2: context.read<ClubInfoCubit>(),
            ),
            child: LoaderOverlay(
              overlayColor: context.shadowColor,
              useDefaultLoading: false,
              overlayOpacity: .7,
              overlayWidget: const TicketLogoAnimation(),
              child: Scaffold(
                appBar: TonightPartnersAppBar(
                  title: S().addEvent,
                ),
                floatingActionButton: const AddEventButton(),
                body: SafeArea(
                  child: BlocListener<AddEventCubit, AddEventState>(
                    listenWhen: (previous, current) =>
                        previous.errorMessage != current.errorMessage ||
                        previous.status != current.status ||
                        previous.currentStep != current.currentStep,
                    listener: (context, state) {
                      state.errorMessage.fold(
                        () {},
                        (error) => context.showSnackbarMessage(error),
                      );

                      state.status.isSubmissionInProgress
                          ? context.loaderOverlay.show()
                          : context.loaderOverlay.hide();

                      if (state.status.isSubmissionSuccess) {
                        isEventAddedSuccessfully = true;
                        context.router.popUntilRoot();
                        context.showSnackbarMessage(S().eventAddedSuccessfully);
                      }
                    },
                    child: const AddEventSteps(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
