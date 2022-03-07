import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
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
          create: (ctx) => getIt<EventFavoriteCubit>()..getFavoriteEventIds(),
        ),
        BlocProvider(create: (ctx) => getIt<TicketCubit>()..getTickets()),
      ],
      child: MaterialApp.router(
        title: 'Raver',
        theme: appTheme,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
