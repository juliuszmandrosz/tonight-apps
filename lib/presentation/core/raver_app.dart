import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/available_filters/available_filters_cubit.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/config/themes/app_theme.dart';
import 'package:raver/presentation/routes/app_router.dart';

class RaverApp extends StatelessWidget {
  final _appRouter = AppRouter();

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
          create: (ctx) => getIt<UserLocationCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<EventFavoriteCubit>()..getFavoriteEventIds(),
        ),
        BlocProvider(
          create: (ctx) =>
              getIt<AvailableFiltersCubit>()..getAvailableFilters(),
        ),
        BlocProvider(create: (context) => getIt<EventOverviewBloc>()),
        BlocProvider(
          create: (ctx) => EventFiltersCubit(
            getIt<EventOverviewBloc>(),
            getIt<UserLocationCubit>(),
          ),
        ),
        BlocProvider(
          create: (ctx) => getIt<TicketCubit>()..getTickets(),
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
      ],
      child: MaterialApp.router(
        title: 'Raver',
        theme: appTheme,
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
      ),
    );
  }
}
