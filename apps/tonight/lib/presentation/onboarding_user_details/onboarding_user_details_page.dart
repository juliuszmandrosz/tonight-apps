import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_profile_picture.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_username_input.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/submit_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class OnboardingUserDetailsPage extends StatelessWidget {
  const OnboardingUserDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: BlocProvider(
        create: (context) => getIt<OnboardingUserDetailsCubit>(),
        child: BlocListener<OnboardingUserDetailsCubit,
            OnboardingUserDetailsState>(
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) {
                context.showSnackbarMessage(error);
              },
            );

            if (state.submissionStatus.isSubmissionSuccess) {
              context.router.replaceAll([const DailySpinRoute()]);
            }
          },
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          const SizedBox(height: 50),
                          const OnboardingProfilePicture(),
                          const SizedBox(height: 40),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: TonightHeadline(
                          //     // TODO - add translation
                          //     text: 'Almost there! 🎉',
                          //     isSmallerVersion: true,
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.center,
                            child: TonightHeadline(
                              text: S().chooseUsernameAndProfilePhoto,
                              isSmallerVersion: true,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const OnboardingUsernameInput(),
                          // const SizedBox(height: 30),
                          // const OnboardingCityInput(),
                          // const SizedBox(height: 30),
                          // const OnboardingBirthdateInput(),
                          // const SizedBox(height: 30),
                          // const OnboardingGenderInput(),
                          // const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: context.viewInsets.bottom == 0,
                      child: const SubmitButton(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
