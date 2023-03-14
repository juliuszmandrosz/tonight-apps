import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tonight_scanner/injection.dart';
import 'package:tonight_scanner/presentation/routes/app_router.dart';
import 'package:translations/translations.dart';

class TonightScannerApp extends StatelessWidget {
  final _appRouter = AppRouter();

  TonightScannerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<AuthCubit>()..requestAuthCheck(),
        ),
        BlocProvider(
          create: (ctx) => getIt<NetworkCheckCubit>()..initNetworkListener(),
        ),
        BlocProvider(
          create: (ctx) => getIt<RemoteConfigCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: S().tonightScanner,
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
      ),
    );
  }
}
