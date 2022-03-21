import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver/application/app_settings/app_settings_cubit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/initialization/remote_config_cubit.dart';
import 'package:raver/application/network_check/network_check_cubit.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/config/themes/dark_theme/dark_theme.dart';
import 'package:raver/presentation/config/themes/light_theme/light_theme.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverApp extends StatelessWidget {
  final _appRouter = AppRouter();
  late EventOverviewBloc _eventOverviewBloc;

  RaverApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<AuthCubit>()..requestAuthCheck(),
        ),
        BlocProvider(
          create: (ctx) =>
              getIt<AvailableFiltersCubit>()..getAvailableFilters(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) {
            _eventOverviewBloc = getIt<EventOverviewBloc>();
            return _eventOverviewBloc;
          },
        ),
        BlocProvider(
          create: (ctx) => getIt<UserLocationCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<RemoteConfigCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<NetworkCheckCubit>()..initNetworkListener(),
        ),
        BlocProvider(
          create: (ctx) => getIt<EventFiltersCubit>(param1: _eventOverviewBloc),
        ),
        BlocProvider(
          create: (ctx) => getIt<TicketCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<EventFavoriteCubit>(),
        ),
        BlocProvider<ClubsOverviewBloc>(
          create: (context) => getIt<ClubsOverviewBloc>()
            ..add(
              ClubsOverviewEvent.clubsFetched(
                ClubFilters.empty(),
              ),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ClubFiltersCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ProfileCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AppSettingsCubit>(),
        )
      ],
      child: BlocBuilder<AppSettingsCubit, AppSettingsState>(
        buildWhen: ((previous, current) =>
            previous.appSettings.isDarkTheme !=
            current.appSettings.isDarkTheme),
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Raver',
            theme: state.appSettings.isDarkTheme ? darkTheme : lightTheme,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
