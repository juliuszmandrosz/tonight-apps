import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/network_check/network_check_cubit.dart';
import 'package:raver/application/tickets/ticket_cubit.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  _resetFiltersAndFetchData(BuildContext context) async {
    context.read<EventFiltersCubit>()
      ..resetFilters()
      ..resetSelectedDay();
    await context.read<EventFavoriteCubit>().getFavoriteEventIds();
    await context.read<TicketCubit>().getTickets();
  }

  @override
  Widget build(BuildContext context) {
    _resetFiltersAndFetchData(context);
    // TODO - Find why this build method get called twice
    return MultiBlocListener(
      listeners: [
        BlocListener<NetworkCheckCubit, NetworkCheckState>(
          bloc: context.read<NetworkCheckCubit>(),
          listener: (context, state) {
            if (!state.isConnected) {
              AutoRouter.of(context).push(const NetworkLostRoute());
            }
          },
        ),
        BlocListener<AuthCubit, AuthState>(
          bloc: context.read<AuthCubit>(),
          listener: (context, state) => state.map(
              initial: (_) {},
              authenticated: (_) =>
                  AutoRouter.of(context).replace(WelcomeLoaderRoute()),
              unauthenticated: (_) =>
                  AutoRouter.of(context).replace(const AuthRoute())),
        )
      ],
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => RaverAppBar(
          actions: [
            RaverIconButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
                AutoRouter.of(context).replace(const AuthRoute());
              },
              icon: const FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: DefaultColors.backgroundColor,
              ),
            )
          ],
        ),
        routes: const [HomeRouter(), TicketsRouter()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: S().home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  FontAwesomeIcons.ticketAlt,
                ),
                label: S().tickets(2),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.favorite,
                ),
                label: S().favorites,
              ),
              BottomNavigationBarItem(
                icon: const FaIcon(
                  FontAwesomeIcons.userAlt,
                ),
                label: S().profile,
              ),
            ],
          );
        },
      ),
    );
  }
}
