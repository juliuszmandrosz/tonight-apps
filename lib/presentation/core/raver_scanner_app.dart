import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverScannerApp extends StatelessWidget {
  final _appRouter = AppRouter();

  RaverScannerApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => getIt<AuthCubit>()..requestAuthCheck(),
      child: MaterialApp.router(
        title: 'Raver Scanner',
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
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
