import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/config/themes/extensions/text_theme_extension.dart';
import 'package:raver/presentation/onboarding/widgets/submit_button.dart';
import 'package:raver/presentation/profile/update_username/widgets/username_input.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/generated/l10n.dart';

class OnboardingPage extends StatelessWidget {
  bool shouldPop = false;

  OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => shouldPop,
      child: BlocProvider(
        create: (context) => getIt<UsernameCubit>(),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            S().onboardingWelcomeTitle,
                            style: theme.onboardingTitle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            S().onboardingWelcomeSubtitle,
                            style: theme.onboardingSubtitle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      BlocListener<UsernameCubit, UsernameState>(
                        listener: (context, state) {
                          state.errorMessage.fold(() {}, (error) {
                            context.showSnackbarMessage(
                                authErrorMessages[error] ?? S().serverError);
                          });
                          if (state.status.isSubmissionSuccess) {
                            context.showSnackbarMessage(
                                S().usernameUpdatedMessage);
                            shouldPop = true;
                            AutoRouter.of(context).pop();
                          }
                        },
                        child: Column(
                          children: const [
                            UserNameInput(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SubmitButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
