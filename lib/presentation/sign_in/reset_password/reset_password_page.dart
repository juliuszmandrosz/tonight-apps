import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/sign_in/reset_password/widgets/reset_password_button.dart';
import 'package:raver_scanner/presentation/sign_in/reset_password/widgets/reset_password_email_input.dart';
import 'package:raver_translations/raver_translations.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(S().resetPassword, style: theme.textTheme.headline1),
        elevation: 0,
        backgroundColor: theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_rounded,
            size: 32,
            color: theme.colorScheme.outline,
          ),
          onPressed: () => AutoRouter.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 40,
        ),
        child: BlocProvider(
          create: (context) => getIt<ResetPasswordCubit>(),
          child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
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
                AutoRouter.of(context).pop();
                context.showSnackbarMessage(S().passwordResetLinkSent);
              }
            },
            child: Column(
              children: const [
                ResetPasswordEmailInput(),
                SizedBox(height: 30),
                ResetPasswordButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
