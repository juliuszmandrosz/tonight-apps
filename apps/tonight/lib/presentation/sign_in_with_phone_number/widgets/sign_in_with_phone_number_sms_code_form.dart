import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';
import 'package:translations/translations.dart';

class SignInWithPhoneNumberSmsCodeForm extends StatefulWidget {
  const SignInWithPhoneNumberSmsCodeForm({Key? key}) : super(key: key);

  @override
  State<SignInWithPhoneNumberSmsCodeForm> createState() =>
      _SignInWithPhoneNumberSmsCodeFormState();
}

class _SignInWithPhoneNumberSmsCodeFormState
    extends State<SignInWithPhoneNumberSmsCodeForm> {
  var _secondsLeft = 60;

  @override
  Widget build(BuildContext context) {
    final smsFormKey = GlobalKey<FormState>();
    return BlocBuilder<SignInWithPhoneNumberCubit, SignInWithPhoneNumberState>(
      builder: (context, state) {
        return Column(
          children: [
            const Spacer(),
            Text(
              "${S().enterVerificationCodeSentTo} ${state.phoneNumber}",
              style: context.titleSmall.copyWith(color: context.hintColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Pinput(
              autofocus: true,
              key: smsFormKey,
              keyboardType: TextInputType.phone,
              length: 6,
              onChanged: (value) => context
                  .read<SignInWithPhoneNumberCubit>()
                  .changeSmsCode(value),
              onCompleted: (_) =>
                  context.read<SignInWithPhoneNumberCubit>().verifySmsCode(),
              defaultPinTheme: PinTheme(
                textStyle: context.titleSmall,
                decoration: BoxDecoration(
                  color: context.surfaceColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 60,
                width: 60,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(),
                CountdownTimer(
                  secondsLeft: _secondsLeft,
                  onTimerCompleted:
                      context.read<SignInWithPhoneNumberCubit>().reset,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              S().notReceivedCode,
              style: context.titleSmall.copyWith(color: context.hintColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                setState(() {
                  _secondsLeft = _secondsLeft;
                });
                context
                    .read<SignInWithPhoneNumberCubit>()
                    .sendSmsVerificationCode();
              },
              child: state.sendSmsStatus.isLoading()
                  ? const DotsLoadingIndicator(size: 18)
                  : Text(
                      S().resend,
                      style: context.titleSmall
                          .copyWith(color: context.primaryColor),
                      textAlign: TextAlign.center,
                    ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: state.verifySmsStatus.isLoading()
                  ? const CircleLoadingIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        if (smsFormKey.currentState != null &&
                            smsFormKey.currentState!.validate()) {
                          context
                              .read<SignInWithPhoneNumberCubit>()
                              .verifySmsCode();
                        }
                      },
                      child: Text(S().verify),
                    ),
            ),
          ],
        );
      },
    );
  }
}
