import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/auth/forgot_password/widgets/reset_password_button.dart';
import 'package:raver_scanner/presentation/auth/forgot_password/widgets/reset_password_email_input.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_headline.dart';
import 'package:raver_translations/raver_translations.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: RaverScannerHeadline(text: S().resetPassword),
        elevation: 0,
        backgroundColor: theme.backgroundColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_rounded,
            color: theme.colorScheme.outline,
            size: 32,
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
