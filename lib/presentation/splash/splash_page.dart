import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (ctx, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => context.replaceRoute(const NavigatorRoute()),
          unauthenticated: (_) => context.replaceRoute(const AuthRoute()),
        );
      },
      child: Container(),
    );
  }
}
