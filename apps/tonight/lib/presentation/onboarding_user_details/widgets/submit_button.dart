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
        return state.formStatus.isSubmissionInProgress
            ? const CircleLoadingIndicator()
            : Visibility(
                visible: context.viewInsets.bottom == 0,
                child: SizedBox(
                  height: kButtonHeight,
                  width: 300,
                  child: ElevatedButton(
                    onPressed: context
                        .read<OnboardingUserDetailsCubit>()
                        .submitOnboarding,
                    child: Text(S().submit),
                  ),
                ),
              );
      },
    );
  }
}
