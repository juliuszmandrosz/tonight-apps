import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/verify_phone_number/widgets/verify_phone_number_form.dart';
import 'package:tonight/presentation/verify_phone_number/widgets/verify_phone_number_sms_code_form.dart';
import 'package:translations/translations.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VerifyPhoneNumberCubit>(),
      child: BlocConsumer<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
        listener: (context, state) {
          state.failureMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          if (state.verifySmsStatus.isSuccess()) {
            context.showSnackbarMessage(S().phoneNumberVerified);
            context.popRoute<bool>(true);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: TonightAppBar(
                title: '',
                backgroundColor: context.backgroundColor,
              ),
              body: Padding(
                padding: const EdgeInsets.all(16.0),
                child: state.verificationId.fold(
                  () => const VerifyPhoneNumberForm(),
                  (_) => const VerifyPhoneNumberSmsCodeForm(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
