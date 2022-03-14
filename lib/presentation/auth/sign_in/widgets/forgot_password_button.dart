import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/routes/app_router.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => AutoRouter.of(context).push(const ResetPasswordRoute()),
      child: Text(
        S().forgotPassword,
      ),
    );
  }
}
