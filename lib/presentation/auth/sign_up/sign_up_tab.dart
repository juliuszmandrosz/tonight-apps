import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/sign_up/sign_up_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/auth/sign_up/widgets/sign_up_form.dart';

class SignUpTab extends StatelessWidget {
  const SignUpTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<SignUpCubit>(),
      child: const SignUpForm(),
    );
  }
}
