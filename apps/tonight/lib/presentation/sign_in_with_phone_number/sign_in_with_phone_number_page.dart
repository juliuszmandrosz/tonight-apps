import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/sign_in_with_phone_number/widgets/sign_in_with_phone_number_form.dart';
import 'package:tonight/presentation/sign_in_with_phone_number/widgets/sign_in_with_phone_number_sms_code_form.dart';

class SignInWithPhoneNumberPage extends StatelessWidget {
  const SignInWithPhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInWithPhoneNumberCubit>(),
        ),
      ],
      child:
          BlocConsumer<SignInWithPhoneNumberCubit, SignInWithPhoneNumberState>(
        listener: (context, state) {
          state.failureMessage.fold(
            () => null,
            (message) => context.showSnackbarMessage(message),
          );

          if (state.verifySmsStatus.isSuccess() && state.user.isSome()) {
            final user = state.user.getOrCrash();
            final route = user.isOnboardingCompleted
                ? const WelcomeLoaderRoute()
                : const OnboardingUserDetailsRoute();
            context.router.replaceAll([route]);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: state.verificationId.fold(
                  () => const SignInWithPhoneNumberForm(),
                  (_) => const SignInWithPhoneNumberSmsCodeForm(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
