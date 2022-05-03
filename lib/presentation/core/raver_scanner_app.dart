import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_scanner/presentation/themes/dark_theme/dark_theme.dart';
import 'package:raver_scanner/presentation/themes/light_theme/light_theme.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverScannerApp extends StatelessWidget {
  final _appRouter = AppRouter();

  RaverScannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<AuthCubit>()..requestAuthCheck(),
        ),
        BlocProvider(
          create: (ctx) => getIt<CurrentEventCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Raver Scanner',
        theme: lightTheme,
        darkTheme: darkTheme,
        // TODO - change to system
        themeMode: ThemeMode.light,
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
