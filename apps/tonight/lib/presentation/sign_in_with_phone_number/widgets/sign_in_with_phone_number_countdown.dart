import 'package:common/constants/auth_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/presentation/commons/widgets/countdown_timer.dart';

class SignInWithPhoneNumberCountdown extends StatelessWidget {
  const SignInWithPhoneNumberCountdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInWithPhoneNumberCubit, SignInWithPhoneNumberState>(
      buildWhen: (p, c) => p.verificationId != c.verificationId,
      builder: (context, state) {
        return Row(
          children: [
            const Spacer(),
            CountdownTimer(
              secondsLeft: kSmsCodeTimeoutDurationInSeconds,
              onTimerCompleted:
                  context.read<SignInWithPhoneNumberCubit>().reset,
            ),
          ],
        );
      },
    );
  }
}
