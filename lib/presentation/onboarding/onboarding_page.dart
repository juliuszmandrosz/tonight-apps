import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/username/username_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/onboarding/widgets/submit_button.dart';
import 'package:raver/presentation/update_username/widgets/username_input.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/generated/l10n.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var shouldPop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => shouldPop,
      child: BlocProvider(
        create: (context) => getIt<UsernameCubit>(),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RaverHeadline(text: S().onboardingWelcomeTitle),
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          S().onboardingWelcomeSubtitle,
                          style: context.headline6,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(height: 30),
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
                        child: const UsernameInput(),
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
