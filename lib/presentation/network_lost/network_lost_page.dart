import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/welcome_loader/welcome_loader_cubit.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NetworkLostPage extends StatelessWidget {
  const NetworkLostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkCheckCubit, NetworkCheckState>(
      bloc: context.read<NetworkCheckCubit>(),
      listener: (context, state) {
        if (state.isConnected) {
          context.read<WelcomeLoaderCubit>().loadData();
          AutoRouter.of(context).replace(const NavigatorRoute());
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              AutoSizeText(
                S().lostNetworkConnectionDescription,
                style: context.headline5,
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              const Spacer(),
              Lottie.asset('assets/animations/no_connection.json'),
            ],
          ),
        ),
      ),
    );
  }
}
