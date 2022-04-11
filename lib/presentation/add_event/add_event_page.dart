import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event_notifier/add_event_notifier_cubit.dart';
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
      child: Scaffold(
        appBar: RaverPartnersAppBar(
          title: S().addEvent,
        ),
        body: SafeArea(
          child: BlocProvider(
            create: (context) => getIt<AddEventCubit>(
              param1: context.read<AddEventNotifierCubit>(),
            ),
            child: BlocListener<AddEventCubit, AddEventState>(
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
    );
  }
}
