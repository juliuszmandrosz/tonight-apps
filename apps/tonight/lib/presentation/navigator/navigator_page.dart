import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/drawer/tonight_drawer.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';
import 'package:translations/translations.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const iconSize = 28.0;
    return GestureDetector(
      onTap: () => context.unfocus(),
      child: AutoTabsScaffold(
        drawer: _selectedIndex == TonightNavigationDestination.profile.index
            ? const TonightDrawer()
            : null,
        appBarBuilder: _buildAppBar,
        routes: const [
          DashboardRoute(),
          DiscoverRoute(),
          MessagesRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: context.dividerColor,
                ),
              ),
            ),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                return NavigationBar(
                  backgroundColor: context.backgroundColor,
                  selectedIndex: tabsRouter.activeIndex,
                  onDestinationSelected: (i) async {
                    context.unfocus();
                    if (i == TonightNavigationDestination.profile.index ||
                        i == TonightNavigationDestination.messages.index) {
                      final result = await _handleProfileNavigation();
                      if (!result) {
                        i = _selectedIndex;
                      }
                    }

                    setState(() {
                      _selectedIndex = i;
                    });
                    tabsRouter.setActiveIndex(i);
                  },
                  destinations: [
                    NavigationDestination(
                      icon: const Icon(
                        Icons.home_outlined,
                        size: iconSize,
                      ),
                      label: S().home,
                    ),
                    NavigationDestination(
                      icon: const Icon(
                        Icons.explore_outlined,
                        size: iconSize,
                      ),
                      label: S().discover,
                    ),
                    // NavigationDestination(
                    //   icon: const Icon(
                    //     Icons.checklist_outlined,
                    //     size: iconSize,
                    //   ),
                    //   label: S().challenge(2).capitalize(),
                    // ),
                    const NavigationDestination(
                      icon: Icon(
                        Icons.chat_bubble_outline,
                        size: iconSize,
                      ),
                      // TODO - add translation
                      label: 'Czaty',
                    ),
                    NavigationDestination(
                      icon: const Icon(
                        Icons.person_outline,
                        size: iconSize,
                      ),
                      label: S().profile,
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    TabsRouter router,
  ) {
    switch (TonightNavigationDestination.values[router.activeIndex]) {
      case TonightNavigationDestination.tonight:
        return TonightAppBar(
          backgroundColor: context.backgroundColor,
          isClassicLogo: false,
        );
      case TonightNavigationDestination.discover:
        return PreferredSize(
          preferredSize: Size.fromHeight(context.padding.top),
          child: Container(
            color: context.backgroundColor,
            height: context.padding.top,
          ),
        );

      // case TonightNavigationDestination.challenges:
      //   return PreferredSize(
      //     preferredSize: Size.fromHeight(context.padding.top),
      //     child: Container(
      //       color: context.backgroundColor,
      //       height: context.padding.top,
      //     ),
      //   );
      case TonightNavigationDestination.profile:
        return TonightAppBar(
          title: '',
          backgroundColor: context.backgroundColor,
        );
      case TonightNavigationDestination.messages:
        return TonightAppBar(
          title: 'Twoje wydarzenia',
          backgroundColor: context.backgroundColor,
        );
    }
  }

  Future<bool> _handleProfileNavigation() async {
    if (context.read<AuthCubit>().checkIfUserIsAnonymous()) {
      await showSignInDialog(context);
      return false;
    }
    return true;
  }
}
