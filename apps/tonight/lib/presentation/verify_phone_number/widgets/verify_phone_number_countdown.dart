import 'package:common/constants/auth_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/verify_phone_number/verify_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';

class VerifyPhoneNumberCountdown extends StatelessWidget {
  const VerifyPhoneNumberCountdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
      buildWhen: (p, c) => p.verificationId != c.verificationId,
      builder: (context, state) {
        return Row(
          children: [
            const Spacer(),
            CountdownTimer(
              secondsLeft: kSmsCodeTimeoutDurationInSeconds,
              onTimerCompleted: context.read<VerifyPhoneNumberCubit>().reset,
            ),
          ],
        );
      },
    );
  }
}
