import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_scanner/presentation/event/event_page.dart';
import 'package:raver_scanner/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var _hasBeenInitialized = false;

  @override
  Widget build(BuildContext context) {
    if (!_hasBeenInitialized) {
      context.read<CurrentEventCubit>().getCurrentEvent();
      context.read<SelectorClubCubit>().getClubInfo();
      _hasBeenInitialized = true;
    }

    return MultiBlocListener(
      listeners: [
        // TODO - add network check here
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(const NavigatorRoute()),
              unauthenticated: (_) =>
                  AutoRouter.of(context).replace(const AuthRoute())),
        )
      ],
      child: BlocBuilder<SelectorClubCubit, SelectorClubState>(
        builder: (context, state) {
          switch (state.status) {
            case CubitStatus.initial:
              return const SizedBox();
            case CubitStatus.loading:
              return const Center(child: CircularProgressIndicator());

            case CubitStatus.failure:
              return Center(child: Text(S().serverError));

            case CubitStatus.success:
              return Scaffold(
                appBar: RaverScannerAppBar(
                  actions: [
                    IconButton(
                      onPressed: () {
                        context.read<AuthCubit>().signOut();
                        AutoRouter.of(context).replace(const AuthRoute());
                      },
                      icon: const FaIcon(FontAwesomeIcons.signOutAlt),
                    )
                  ],
                ),
                body: const EventPage(),
              );
          }
        },
      ),
    );
  }
}
