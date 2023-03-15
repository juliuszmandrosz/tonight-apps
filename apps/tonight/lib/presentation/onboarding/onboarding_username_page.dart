import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/auth/username/username_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:tonight/presentation/onboarding/widgets/submit_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/update_username/widgets/username_input.dart';
import 'package:translations/generated/l10n.dart';

class OnboardingUsernamePage extends StatelessWidget {
  const OnboardingUsernamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocProvider(
        create: (context) => getIt<UsernameCubit>(),
        child: BlocConsumer<UsernameCubit, UsernameState>(
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
            final username = state.username.value;
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
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: context.surfaceColor,
                              ),
                              child: Center(
                                child: Text(
                                  username.isEmpty
                                      ? ''
                                      : username.length == 1
                                          ? username[0].toUpperCase()
                                          : username
                                              .substring(0, 2)
                                              .toUpperCase(),
                                  style: context.headlineMedium,
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TonightHeadline(text: S().setYourUsername),
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
