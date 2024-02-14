import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_birthdate_input.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_city_input.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_gender_input.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_is_newsletter_subscribed_checkbox.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_profile_picture.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_username_input.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/submit_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class OnboardingUserDetailsPage extends StatelessWidget {
  final AppUser user;

  const OnboardingUserDetailsPage({
    required this.user,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: BlocProvider(
        create: (context) =>
            getIt<OnboardingUserDetailsCubit>()..initState(user),
        child: BlocListener<OnboardingUserDetailsCubit,
            OnboardingUserDetailsState>(
          listener: (context, state) {
            state.errorMessage.fold(
              () {},
              (error) {
                context.showSnackbarMessage(error);
              },
            );

            if (state.formStatus.isSubmissionSuccess) {
              context.router.replaceAll([const DailySpinRoute()]);
            }
          },
          child: Scaffold(
            floatingActionButton: const SubmitButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    const SizedBox(height: 10),
                    const OnboardingProfilePicture(),
                    const SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        '${S().enterUsernameAndOtherDetails} 🎉',
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: context.titleSmall.copyWithSecondaryColor(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const OnboardingUsernameInput(),
                    const SizedBox(height: 20),
                    const OnboardingCityInput(),
                    const SizedBox(height: 20),
                    const OnboardingBirthdateInput(),
                    const SizedBox(height: 20),
                    const OnboardingGenderInput(),
                    const SizedBox(height: 20),
                    const OnboardingIsNewsletterSubscribedCheckbox(),
                    const SizedBox(height: 60),
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
