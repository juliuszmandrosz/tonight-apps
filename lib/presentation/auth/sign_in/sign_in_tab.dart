import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/sign_in/sign_in_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/auth/sign_in/widgets/sign_in_form.dart';

class SignInTab extends StatelessWidget {
  const SignInTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<SignInCubit>(),
      child: const SignInForm(),
    );
  }
}
