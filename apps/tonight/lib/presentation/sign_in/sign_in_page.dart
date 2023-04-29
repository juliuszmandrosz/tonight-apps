import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/auth/sign_in/sign_in_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in/widgets/sign_in_buttons.dart';
import 'package:tonight/presentation/sign_in/widgets/sign_in_email_input.dart';
import 'package:tonight/presentation/sign_in/widgets/terms_of_service_info.dart';
import 'package:tonight/presentation/sign_in/widgets/tonight_logo.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayColor: context.shadowColor,
      overlayOpacity: .7,
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<SignInCubit>(),
          child: BlocListener<SignInCubit, SignInState>(
            listener: (context, state) {
              state.errorMessage.fold(
                () {},
                (error) => context.showSnackbarMessage(error),
              );

              state.linkSentMessage.fold(
                () {},
                (message) => context.showSnackbarMessage(message),
              );

              state.signInStatus.isSubmissionInProgress
                  ? context.loaderOverlay.show()
                  : context.loaderOverlay.hide();

              if (state.signInStatus.isSubmissionSuccess) {
                final route = state.isNewUser
                    ? const OnboardingUserDetailsRoute()
                    : const WelcomeLoaderRoute();
                context.router.replaceAll([route]);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        TonightLogo(height: context.height * 0.33),
                        SizedBox(height: context.height * 0.07),
                        const SignInEmailInput(),
                        const SizedBox(height: 30),
                        const TermsOfServiceInfo(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: SignInButtons(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
