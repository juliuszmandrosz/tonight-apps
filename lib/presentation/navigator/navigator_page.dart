import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_partners/presentation/core/raver_partners_app_bar.dart';
import 'package:raver_partners/presentation/core/raver_partners_speed_dial.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';
import 'package:raver_translations/raver_translations.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<ClubInfoCubit>().getClubInfo();
    // TODO - add network check here
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replace(const NavigatorRoute()),
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const AuthRoute()),
        );
      },
      child: BlocBuilder<ClubInfoCubit, ClubInfoState>(
        builder: (context, state) {
          if (state.status.isLoading()) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.status.isFailure()) {
            return Center(child: Text(S().serverError));
          }

          return AutoTabsScaffold(
            resizeToAvoidBottomInset: false,
            appBarBuilder: (_, tabsRouter) => RaverPartnersAppBar(
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
            routes: const [
              EventsRoute(),
              RewardsRoute(),
              SelectorsRoute(),
            ],
            floatingActionButton: const RaverPartnersSpeedDial(),
            bottomNavigationBuilder: (_, tabsRouter) {
              return BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: const Icon(FontAwesomeIcons.list),
                    label: S().events(2),
                  ),
                  BottomNavigationBarItem(
                    icon: const Icon(FontAwesomeIcons.trophy),
                    label: S().rewards(2),
                  ),
                  BottomNavigationBarItem(
                      icon: const Icon(FontAwesomeIcons.userFriends),
                      label: S().selectors(2)),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
