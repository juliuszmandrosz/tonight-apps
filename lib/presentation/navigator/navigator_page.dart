import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_scanner/presentation/event/event_page.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<WelcomeLoaderCubit>().loadData();
    return Scaffold(
      appBar: const RaverScannerAppBar(),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            bloc: context.read<AuthCubit>(),
            listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(const NavigatorRoute()),
              unauthenticated: (_) {
                context.read<WelcomeLoaderCubit>().resetState();
                AutoRouter.of(context).push(const AuthRoute());
              },
            ),
          ),
          BlocListener<NetworkCheckCubit, NetworkCheckState>(
            bloc: context.read<NetworkCheckCubit>(),
            listener: (context, state) {
              if (!state.isConnected) {
                AutoRouter.of(context).replace(const NetworkLostRoute());
              }
            },
          ),
        ],
        child: BlocConsumer<WelcomeLoaderCubit, WelcomeLoaderState>(
          listener: (context, state) {
            if (state.remoteConfigStatus.isFailure()) {
              AutoRouter.of(context).replace(const NetworkLostRoute());
            }
          },
          builder: (context, state) {
            final welcomeLoaderCubit = context.read<WelcomeLoaderCubit>();

            if (welcomeLoaderCubit.isStatusInitial) {
              return const SizedBox();
            }

            if (welcomeLoaderCubit.isStatusLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (welcomeLoaderCubit.isStatusFailure) {
              return Center(child: Text(S().serverError));
            }

            return const EventPage();
          },
        ),
      ),
    );
  }
}
