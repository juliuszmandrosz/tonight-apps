import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/sign_in_with_phone_number/sign_in_with_phone_number_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/get_authenticated_route.dart';
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
            final route = getAuthenticatedRoute(user);
            context.router.replaceAll([route]);
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
