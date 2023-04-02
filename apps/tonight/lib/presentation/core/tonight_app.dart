import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tonight/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:tonight/application/core/user_location/user_location_cubit.dart';
import 'package:tonight/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:tonight/application/profile/profile_cubit.dart';
import 'package:tonight/application/ticket_list/ticket_list_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TonightApp extends StatelessWidget {
  final _appRouter = AppRouter();

  TonightApp({Key? key}) : super(key: key);

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
          create: (ctx) => getIt<RemoteConfigCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<NetworkCheckCubit>()..initNetworkListener(),
        ),
        BlocProvider(
          create: (ctx) => getIt<TicketListCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<EventFavoriteCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<ClubFavoriteCubit>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getIt<ProfileCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: S().tonight,
        theme: darkTheme,
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
        localeListResolutionCallback: localeConfig,
        builder: (ctx, child) => ResponsiveWrapper.builder(
          child,
          minWidth: 480,
          backgroundColor: ctx.backgroundColor,
          background: Container(
            color: ctx.backgroundColor,
          ),
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
        ),
      ),
    );
  }
}
