import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/application/network_check/network_check_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class NetworkLostPage extends StatelessWidget {
  const NetworkLostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return WillPopScope(
      onWillPop: () async {
        return context.read<NetworkCheckCubit>().state.isConnected;
      },
      child: Scaffold(
        backgroundColor: DefaultColors.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S().lostNetworkConnectionDescription,
              style: textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Lottie.asset("assets/animations/no_connection_anim.json"),
            TextButton(
                onPressed: () {
                  if (context.read<NetworkCheckCubit>().state.isConnected) {
                    AutoRouter.of(context).pop();
                  }
                },
                child: Text(S().retryConnection))
          ],
        ),
      ),
    );
  }
}
