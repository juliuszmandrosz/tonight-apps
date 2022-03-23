import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/auth/forgot_password/widgets/forgot_password_button.dart';
import 'package:raver/presentation/auth/forgot_password/widgets/forgot_password_email_input.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: RaverHeadline(text: S().resetPassword),
        elevation: 0,
        backgroundColor: theme.backgroundColor,
        automaticallyImplyLeading: false,
        leading: RaverIconButton(
          icon: const Icon(
            Icons.chevron_left_rounded,
            color: DefaultColors.textColor,
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
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(
                        content: Text(
                          authErrorMessages[error] ?? S().serverError,
                        ),
                      ),
                    );
                },
              );

              if (state.status.isSubmissionSuccess) {
                AutoRouter.of(context).pop();
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      content: Text(S().passwordResetLinkSent),
                    ),
                  );
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
