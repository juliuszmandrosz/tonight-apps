import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/application/welcome_loading/welcome_loading_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/error_alert/error_alert.dart';
import 'package:raver/presentation/routes/app_router.dart';

import '../config/themes/default_theme/default_colors.dart';

class WelcomeLoaderPage extends StatelessWidget {
  final _welcomeBloc = getIt<WelcomeLoadingCubit>();

  WelcomeLoaderPage({Key? key}) : super(key: key);

  _fetchData(BuildContext context) async {
    await context.read<EventFavoriteCubit>().getFavoriteEventIds();
    await context.read<TicketCubit>().getTickets();
    await context.read<UserLocationCubit>().requestUserLocationOnStart();
    context.read<RemoteConfigCubit>().setupRemoteConfig();
    context.read<EventFiltersCubit>().resetFilters();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    _fetchData(context);

    return Scaffold(
      backgroundColor: DefaultColors.primaryColor,
      body: BlocProvider(
        create: (ctx) => _welcomeBloc,
        child: MultiBlocListener(
          listeners: [
            BlocListener<UserLocationCubit, UserLocationState>(
                listener: (context, state) {
              if (state.isLoading == false) {
                _welcomeBloc.locationLoaded();
              }
            }),
            BlocListener<RemoteConfigCubit, RemoteConfigState>(
                listener: (context, state) {
              state.mapOrNull(configLoaded: (_) {
                _welcomeBloc.remoteConfigLoaded();
              }, configFailure: (_) {
                _welcomeBloc.failure();
              });
            }),
          ],
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
                bloc: _welcomeBloc,
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
                  if (state.isRemoteConfigLoaded == true &&
                      state.isLocationLoaded) {
                    AutoRouter.of(context).replace(const NavigatorRouter());
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
      ),
    );
  }
}
