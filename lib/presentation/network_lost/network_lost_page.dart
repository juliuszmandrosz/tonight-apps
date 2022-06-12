import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class NetworkLostPage extends StatelessWidget {
  const NetworkLostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return context.read<NetworkCheckCubit>().state.isConnected;
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S().lostNetworkConnectionDescription,
              style: context.headline6,
              textAlign: TextAlign.center,
            ),
            Lottie.asset("assets/animations/no_connection_anim.json"),
            TextButton(
                onPressed: () {
                  if (context.read<NetworkCheckCubit>().state.isConnected) {
                    final autoRouter = AutoRouter.of(context);
                    autoRouter.canNavigateBack
                        ? autoRouter.pop()
                        : autoRouter.replace(const WelcomeLoaderRoute());
                  }
                },
                child: Text(S().retryConnection))
          ],
        ),
      ),
    );
  }
}
