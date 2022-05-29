import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/clubs/club_favorite/club_favorite_cubit.dart';
import 'package:raver/application/events/event_favorite/event_favorite_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver/application/user_favorites/club_favorites/user_club_favorites_cubit.dart';
import 'package:raver/application/user_favorites/event_favorites/user_event_favorites_cubit.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  _resetFiltersAndFetchData(BuildContext context) async {
    context.read<EventFiltersCubit>()
      ..resetFilters()
      ..resetSelectedDay();
    await context.read<EventFavoriteCubit>().getFavoriteEventIds();
    await context.read<ClubFavoriteCubit>().getFavoriteClubIds();
    context.read<UserEventFavoritesCubit>().getFavorites();
    context.read<UserClubFavoritesCubit>().getFavorites();
    await context.read<TicketListCubit>().fetchTickets();
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
                  AutoRouter.of(context).replace(const SignInRoute())),
        )
      ],
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => const RaverAppBar(),
        routes: const [
          EventsRoute(),
          ClubsRoute(),
          TicketsRoute(),
          FavoritesRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: [
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.fire),
                label: S().events(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.city),
                label: S().clubs(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.ticket),
                label: S().tickets(2),
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.solidHeart),
                label: S().favorites,
              ),
              NavigationDestination(
                icon: const FaIcon(FontAwesomeIcons.solidUser),
                label: S().profile,
              ),
            ],
          );
        },
      ),
    );
  }
}
