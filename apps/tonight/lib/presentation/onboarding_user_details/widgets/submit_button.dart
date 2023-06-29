import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:translations/generated/l10n.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingUserDetailsCubit, OnboardingUserDetailsState>(
      builder: (context, state) {
        return state.submissionStatus.isSubmissionInProgress
            ? const CircleLoadingIndicator()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: kButtonHeight,
                    child: ElevatedButton(
                      child: Text(S().submit),
                      onPressed: () => context
                          .read<OnboardingUserDetailsCubit>()
                          .submitOnboarding(),
                    ),
                  ),
                ],
              );
      },
    );
  }
}
