import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NetworkLostPage extends StatelessWidget {
  const NetworkLostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final networkCheckCubit = context.read<NetworkCheckCubit>();

    return BlocListener<NetworkCheckCubit, NetworkCheckState>(
      bloc: context.read<NetworkCheckCubit>(),
      listener: (context, state) {
        if (state.isConnected) {
          final autoRouter = AutoRouter.of(context);
          context.read<WelcomeLoaderCubit>().loadData();
          autoRouter.canNavigateBack
              ? autoRouter.pop()
              : autoRouter.replace(const NavigatorRoute());
        }
      },
      child: WillPopScope(
        onWillPop: () async {
          return networkCheckCubit.state.isConnected;
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                AutoSizeText(
                  S().lostNetworkConnectionDescription,
                  style: context.headline5,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
                const SizedBox(height: 50),
                Expanded(
                  child: Lottie.asset('assets/animations/no_connection.json'),
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (context.read<NetworkCheckCubit>().state.isConnected) {
                        AutoRouter.of(context).pop();
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
}
