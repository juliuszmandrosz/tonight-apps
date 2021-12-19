import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/sign_in_form_bloc.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (ctx) => getIt<SignInFormBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
