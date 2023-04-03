import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding/onboarding_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/onboarding/widgets/onboarding_profile_picture.dart';
import 'package:tonight/presentation/onboarding/widgets/submit_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/update_username/widgets/username_input.dart';

class OnboardingUserDetailsPage extends StatelessWidget {
  const OnboardingUserDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocProvider(
        create: (context) => getIt<OnboardingCubit>(),
        child: BlocConsumer<OnboardingCubit, OnboardingState>(
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) {
                context.showSnackbarMessage(error);
              },
            );

            if (state.status.isSubmissionSuccess) {
              context.router.replaceAll(
                [const WelcomeLoaderRoute()],
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          children: [
                            const SizedBox(height: 50),
                            const OnboardingProfilePicture(),
                            const SizedBox(height: 40),
                            Align(
                              alignment: Alignment.centerLeft,
                              // TODO - add translation
                              child: TonightHeadline(
                                  text:
                                      "Wybierz swój pseudonim i zdjęcie profilowe"),
                            ),
                            const SizedBox(height: 30),
                            const UsernameInput(),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).viewInsets.bottom == 0,
                        child: const SubmitButton(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
