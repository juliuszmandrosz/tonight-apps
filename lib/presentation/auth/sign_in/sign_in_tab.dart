import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/sign_in/sign_in_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/auth/sign_in/sign_in_button.dart';
import 'package:raver_scanner/presentation/auth/sign_in/sign_in_email_input.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class SignInTab extends StatelessWidget {
  const SignInTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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

          state.status.isSubmissionInProgress
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();

          if (state.status.isSubmissionSuccess) {
            AutoRouter.of(context).replace(const NavigatorRoute());
          }
        },
        child: Column(
          children: const [
            SizedBox(height: 5),
            SignInEmailInput(),
            Spacer(),
            SignInButton(),
          ],
        ),
      ),
    );
  }
}
