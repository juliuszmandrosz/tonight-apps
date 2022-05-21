import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/profile/change_password/widgets/account_new_confirmed_password_input.dart';
import 'package:raver/presentation/profile/change_password/widgets/account_new_password_input.dart';
import 'package:raver/presentation/profile/change_password/widgets/account_old_password_input.dart';
import 'package:raver/presentation/profile/change_password/widgets/submit_password_button.dart';
import 'package:raver_account_settings/raver_account_settings.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';
//Its deprecated (passwordless signin) but will be left in case of something will change in future
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChangePasswordCubit>(),
      child: SafeArea(
        child: Scaffold(
          appBar: RaverAppBar(
            title: S().changePasswordTitle,
          ),
          body: BlocListener<ChangePasswordCubit, ChangePasswordState>(
            listener: (context, state) {
              state.errorMessage.fold(() {}, (error) {
                context.showSnackbarMessage(
                    authErrorMessages[error] ?? S().serverError);
              });
              if (state.status.isSubmissionSuccess) {
                context.showSnackbarMessage(S().passwordUpdatedMessage);
                AutoRouter.of(context).pop();
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      AccountOldPasswordInput(),
                      SizedBox(height: 10),
                      AccountNewPasswordInput(),
                      SizedBox(height: 10),
                      AcccountNewConfirmedPasswordInput(),
                    ],
                  ),
                  const SubmitPasswordButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
