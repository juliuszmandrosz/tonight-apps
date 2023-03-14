import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (ctx, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) =>
                context.replaceRoute(const WelcomeLoaderRoute()),
            unauthenticated: (_) => context.replaceRoute(const SignInRoute()));
      },
      child: Container(),
    );
  }
}
