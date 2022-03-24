import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver_partners/presentation/auth/widgets/forgot_password_button.dart';
import 'package:raver_partners/presentation/auth/widgets/sign_in_button.dart';
import 'package:raver_partners/presentation/auth/widgets/sign_in_email_input.dart';
import 'package:raver_partners/presentation/auth/widgets/sign_in_password_input.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          previous.errorMessage != current.errorMessage ||
          previous.status != current.status,
      listener: (context, state) {
        state.errorMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(
            authErrorMessages[error] ?? S().serverError,
          ),
        );

        if (state.status.isSubmissionSuccess) {
          AutoRouter.of(context).replace(const NavigatorRoute());
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 10),
          SignInEmailInput(),
          SizedBox(height: 20),
          SignInPasswordInput(),
          SizedBox(height: 30),
          SignInButton(),
          SizedBox(height: 10),
          ForgotPasswordButton(),
        ],
      ),
    );
  }
}
