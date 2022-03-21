import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/error_alert/error_alert.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class WelcomeLoaderPage extends StatelessWidget {
  late WelcomeLoadingCubit _welcomeCubit;

  WelcomeLoaderPage({Key? key}) : super(key: key);

  _initWelcomeCubit(BuildContext context) {
    _welcomeCubit = WelcomeLoadingCubit(
        profileCubit: context.read<ProfileCubit>(),
        userLocationCubit: context.read<UserLocationCubit>(),
        remoteConfigCubit: context.read<RemoteConfigCubit>());
  }

  @override
  Widget build(BuildContext context) {
    _initWelcomeCubit(context);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: DefaultColors.primaryColor,
      body: BlocProvider(
        create: (ctx) => _welcomeCubit,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S().raver,
                  style: textTheme.headline2,
                )
              ],
            ),
            BlocConsumer<WelcomeLoadingCubit, WelcomeLoadingState>(
              bloc: _welcomeCubit..loadDependencies(),
              listener: (context, state) {
                if (state.isFailure) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return ErrorAlert(
                          errorMessage: S().errorCheckInternetConnection);
                    },
                  );
                }
                if (state.dependenciesLoaded) {
                  AutoRouter.of(context).replace(const NavigatorRouter());
                  if (!state.onboardingCompleted) {
                    AutoRouter.of(context).push(OnboardingRoute());
                  }
                }
              },
              builder: (context, state) {
                return !state.isFailure
                    ? Lottie.asset("assets/animations/welcome_loader.json",
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
