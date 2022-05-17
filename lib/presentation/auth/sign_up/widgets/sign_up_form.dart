import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver/presentation/auth/sign_up/widgets/sign_up_button.dart';
import 'package:raver/presentation/auth/sign_up/widgets/sign_up_confirm_password_input.dart';
import 'package:raver/presentation/auth/sign_up/widgets/sign_up_email_input.dart';
import 'package:raver/presentation/auth/sign_up/widgets/sign_up_password_input.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.errorMessage.fold(
          () {},
          (error) => context.showSnackbarMessage(
            authErrorMessages[error] ?? S().serverError,
          ),
        );

        if (state.status.isSubmissionSuccess) {
          context.showSnackbarMessage(S().verificationLinkSent);
        }
      },
      child: Column(
        children: const [
          SizedBox(height: 10),
          SignUpEmailInput(),
          SizedBox(height: 20),
          SignUpPasswordInput(),
          SizedBox(height: 20),
          SignUpConfirmPasswordInput(),
          Spacer(),
          SignUpButton(),
        ],
      ),
    );
  }
}
