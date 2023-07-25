import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:translations/translations.dart';

class OnboardingUserDetailsEmailDialog extends StatelessWidget {
  final BuildContext blocContext;

  const OnboardingUserDetailsEmailDialog({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<OnboardingUserDetailsCubit>(),
      child:
          BlocBuilder<OnboardingUserDetailsCubit, OnboardingUserDetailsState>(
        builder: (context, state) {
          return AlertDialog(
            title: Text(S().enterEmail),
            content: TonightTextInput(
              errorText: state.email.error?.message,
              value: state.email.value,
              onChanged:
                  context.read<OnboardingUserDetailsCubit>().emailChanged,
              status: state.emailDialogStatus,
              keyboardType: TextInputType.emailAddress,
              label: S().email,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(S().cancel.toUpperCase()),
              ),
              TextButton(
                onPressed: () {
                  final isEmailValid = context
                      .read<OnboardingUserDetailsCubit>()
                      .validateEmail();
                  if (!isEmailValid) return;
                  Navigator.of(context).pop(true);
                },
                child: Text(S().confirm.toUpperCase()),
              ),
            ],
          );
        },
      ),
    );
  }
}
