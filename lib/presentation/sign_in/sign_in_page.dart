import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_scanner/application/sign_in/sign_in_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
