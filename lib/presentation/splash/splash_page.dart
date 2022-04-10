import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_auth/raver_auth.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (ctx, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {},
          unauthenticated: (_) {},
        );
      },
      child: Container(),
    );
  }
}
