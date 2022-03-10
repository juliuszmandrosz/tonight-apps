import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
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
      appBarBuilder: (_, tabsRouter) => AppBar(
        title: const Text('Raver'),
        centerTitle: false,
      ),
      routes: const [HomeRouter(), TicketsRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.ticketAlt,
              ),
              label: "Tickets",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userAlt,
              ),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}
