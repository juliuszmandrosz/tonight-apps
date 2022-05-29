import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/presentation/error_alert/error_alert.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class WelcomeLoaderPage extends StatelessWidget {
  late WelcomeLoadingCubit _welcomeCubit;
  var hasBeenInitialized = false;

  WelcomeLoaderPage({Key? key}) : super(key: key);

  _initWelcomeCubit(BuildContext context) {
    if (!hasBeenInitialized) {
      hasBeenInitialized = true;
      _welcomeCubit = WelcomeLoadingCubit(
          profileCubit: context.read<ProfileCubit>(),
          userLocationCubit: context.read<UserLocationCubit>(),
          remoteConfigCubit: context.read<RemoteConfigCubit>());
    }
  }

  @override
  Widget build(BuildContext context) {
    _initWelcomeCubit(context);
    return Scaffold(
      body: BlocProvider(
        create: (ctx) => _welcomeCubit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<WelcomeLoadingCubit, WelcomeLoadingState>(
              bloc: _welcomeCubit..loadDependencies(),
              listener: (context, state) {
                if (state.isFailure) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return ErrorAlert(
                        errorMessage: S().errorCheckInternetConnection,
                      );
                    },
                  );
                }
                if (state.dependenciesLoaded) {
                  AutoRouter.of(context).replace(const NavigatorRoute());
                  if (!state.onboardingCompleted) {
                    AutoRouter.of(context).push(OnboardingRoute());
                  }
                }
              },
              builder: (context, state) {
                return !state.isFailure
                    ? Lottie.asset("assets/animations/ticket_loader.json",
                        frameRate: FrameRate(60))
                    : Container();
              },
            )
          ],
        ),
      ),
    );
  }
}
