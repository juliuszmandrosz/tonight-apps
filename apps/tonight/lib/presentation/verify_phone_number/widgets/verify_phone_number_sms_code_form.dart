import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/presentation/verify_phone_number/widgets/verify_phone_number_countdown.dart';
import 'package:translations/translations.dart';

class VerifyPhoneNumberSmsCodeForm extends StatelessWidget {
  const VerifyPhoneNumberSmsCodeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final smsFormKey = GlobalKey<FormState>();
    return BlocBuilder<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
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
              onChanged: (value) =>
                  context.read<VerifyPhoneNumberCubit>().changeSmsCode(value),
              onCompleted: (_) =>
                  context.read<VerifyPhoneNumberCubit>().verifySmsCode(),
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
            const VerifyPhoneNumberCountdown(),
            const SizedBox(height: 20),
            Text(
              S().notReceivedCode,
              style: context.titleSmall.copyWith(color: context.hintColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: context
                  .read<VerifyPhoneNumberCubit>()
                  .sendSmsVerificationCode,
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
                              .read<VerifyPhoneNumberCubit>()
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
