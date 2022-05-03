import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/sign_up/sign_up_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_access_code_input.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_button.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_confirm_password_input.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_email_input.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_password_input.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class SignUpTab extends StatelessWidget {
  const SignUpTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpCubit>(),
      child: BlocListener<SignUpCubit, SignUpState>(
        listener: (context, state) {
          state.errorMessage.fold(
            () {},
            (error) {
              context.showSnackbarMessage(
                authErrorMessages[error] ?? S().serverError,
              );
            },
          );

          if (state.status.isSubmissionSuccess) {
            AutoRouter.of(context).navigate(NavigatorRoute());
          }
        },
        child: ListView(
          children: const [
            SizedBox(height: 5),
            SignUpEmailInput(),
            SizedBox(height: 20),
            SignUpPasswordInput(),
            SizedBox(height: 20),
            SignUpConfirmPasswordInput(),
            SizedBox(height: 20),
            SignUpAccessCodeInput(),
            SizedBox(height: 30),
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}
