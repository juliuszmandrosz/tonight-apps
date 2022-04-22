import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (ctx, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) =>
                AutoRouter.of(context).replace(WelcomeLoaderRoute()),
            unauthenticated: (_) =>
                AutoRouter.of(context).replace(const AuthRoute()));
      },
      child: Container(),
    );
  }
}
