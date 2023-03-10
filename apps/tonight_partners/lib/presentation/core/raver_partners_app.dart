import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/event_notifier/event_notifier_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class RaverPartnersApp extends StatelessWidget {
  final _appRouter = AppRouter();

  RaverPartnersApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..requestAuthCheck(),
        ),
        BlocProvider(
          create: (context) => getIt<EventNotifierCubit>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<NetworkCheckCubit>()..initNetworkListener(),
        ),
        BlocProvider(
          create: (context) => getIt<RemoteConfigCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: S().tonightPartners,
        theme: darkTheme,
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
        localeListResolutionCallback: localeConfig,
      ),
    );
  }
}
