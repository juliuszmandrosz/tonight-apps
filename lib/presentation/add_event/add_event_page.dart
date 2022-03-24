import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/add_event/widgets/add_event_steps.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_translations/raver_translations.dart';

class AddEventPage extends StatelessWidget {
  const AddEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () async {
          final result = await context
              .showConfirmationDialogWithCustomMessage(S().confirmLeavingPage);

          return result ?? false;
        },
        child: Scaffold(
          appBar: RaverPartnersAppBar(
            title: S().addEvent,
          ),
          body: SafeArea(
            child: BlocProvider(
              create: (context) => getIt<AddEventCubit>(
                param1: context.read<EventNotifierCubit>(),
                param2: context.read<ClubInfoCubit>(),
              ),
              child: BlocListener<AddEventCubit, AddEventState>(
                listenWhen: (previous, current) =>
                    previous.errorMessage != current.errorMessage ||
                    previous.status != current.status,
                listener: (context, state) {
                  state.errorMessage.fold(
                    () {},
                    (error) => context.showSnackbarMessage(error),
                  );

                  if (state.status.isSubmissionSuccess) {
                    AutoRouter.of(context).pop();
                    context.showSnackbarMessage(S().eventAddedSuccessfully);
                  }
                },
                child: const AddEventSteps(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
