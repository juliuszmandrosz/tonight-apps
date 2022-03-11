import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  _getUserLocation(BuildContext context) {
    final locationCubit = BlocProvider.of<UserLocationCubit>(context);
    if (locationCubit.state.userLocation.isSome() ||
        locationCubit.state.isLoading) return;
    locationCubit.requestUserLocationOnStart();
  }

  @override
  Widget build(BuildContext context) {
    _getUserLocation(context);
    // TODO - Find why this build method get called twice
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => const RaverAppBar(),
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
    );
  }
}
