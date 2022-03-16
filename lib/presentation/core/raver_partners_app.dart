import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_partners/generated/l10n.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/config/themes/light_theme/light_theme.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class RaverPartnersApp extends StatelessWidget {
  final _appRouter = AppRouter();

  RaverPartnersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..requestAuthCheck(),
      child: MaterialApp.router(
        title: 'Raver Partners',
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        theme: lightTheme,
      ),
    );
  }
}
