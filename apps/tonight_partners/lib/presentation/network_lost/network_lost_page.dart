import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tonight_partners/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class NetworkLostPage extends StatelessWidget {
  const NetworkLostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkCheckCubit, NetworkCheckState>(
      listener: (context, state) {
        if (state.isConnected) {
          _navigateToHomePage(context);
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          return context.read<NetworkCheckCubit>().state.isConnected;
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                const Spacer(),
                AutoSizeText(
                  S().lostNetworkConnectionDescription,
                  style: context.titleLarge,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
                const Spacer(),
                Lottie.asset("assets/animations/no_connection.json"),
                const Spacer(),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (await _checkNetworkConnection(context)) {
                        _navigateToHomePage(context);
                      }
                    },
                    child: Text(S().retryConnection),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _navigateToHomePage(BuildContext context) {
    final router = context.router;
    router.canNavigateBack
        ? router.pop()
        : router.replace(const NavigatorRoute());
  }

  Future<bool> _checkNetworkConnection(BuildContext context) async {
    return await context.read<NetworkCheckCubit>().checkNetworkConnection();
  }
}
