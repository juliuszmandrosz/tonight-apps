import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/auth/widgets/sign_in_form.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 20,
          ),
          child: BlocProvider(
            create: (ctx) => getIt<SignInCubit>(),
            child: const SignInForm(),
          ),
        ),
      ),
    );
  }
}
