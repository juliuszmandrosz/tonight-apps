import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/onboarding_user_details/onboarding_user_details_cubit.dart';
import 'package:tonight/presentation/onboarding_user_details/widgets/onboarding_user_details_email_dialog.dart';
import 'package:translations/translations.dart';

class OnboardingIsNewsletterSubscribedCheckbox extends StatelessWidget {
  const OnboardingIsNewsletterSubscribedCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingUserDetailsCubit, OnboardingUserDetailsState>(
      buildWhen: (p, c) =>
          p.isNewsletterSubscribed != c.isNewsletterSubscribed ||
          p.isSignedInWithEmail != c.isSignedInWithEmail,
      builder: (context, state) {
        return TonightCheckboxListTile(
          value: state.isNewsletterSubscribed,
          onChanged: (value) async {
            context.unfocus();
            if (state.isSignedInWithEmail || value != true) {
              context
                  .read<OnboardingUserDetailsCubit>()
                  .isNewsletterSubscribedChanged(value);
              return;
            }
            final result = await showDialog(
              context: context,
              builder: (_) => OnboardingUserDetailsEmailDialog(
                blocContext: context,
              ),
            );
            if (context.mounted) {
              context
                  .read<OnboardingUserDetailsCubit>()
                  .isNewsletterSubscribedChanged(result);
            }
          },
          title: S().newsletterAgreement,
        );
      },
    );
  }
}
