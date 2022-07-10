import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver/presentation/sign_in/widgets/sign_in_buttons.dart';
import 'package:raver/presentation/sign_in/widgets/sign_in_email_input.dart';
import 'package:raver/presentation/sign_in/widgets/terms_of_service_info.dart';
import 'package:raver/presentation/sign_in/widgets/tonight_logo.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
                (error) => context.showSnackbarMessage(
                  authErrorMessages[error] ?? S().serverError,
                ),
              );

              state.linkSentMessage.fold(
                () {},
                (message) => context.showSnackbarMessage(message),
              );

              state.signInStatus.isSubmissionInProgress
                  ? context.loaderOverlay.show()
                  : context.loaderOverlay.hide();

              if (state.signInStatus.isSubmissionSuccess) {
                context.replaceRoute(const WelcomeLoaderRoute());
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: const [
                        SizedBox(height: 10),
                        TonightLogo(),
                        SignInEmailInput(),
                        SizedBox(height: 20),
                        TermsOfServiceInfo(),
                        SizedBox(height: 30),
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
