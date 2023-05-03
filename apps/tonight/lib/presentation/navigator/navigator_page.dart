import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/events/event_filters/event_filters_page_type.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/drawer/tonight_drawer.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
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
    return GestureDetector(
      onTap: () => context.unfocus(),
      child: AutoTabsScaffold(
        drawer: _selectedIndex == TonightNavigationDestination.profile.index
            ? const TonightDrawer()
            : null,
        appBarBuilder: _buildAppBar,
        routes: const [
          TonightRoute(),
          DiscoverRoute(),
          TonightRoute(),
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
            child: NavigationBar(
              backgroundColor: context.backgroundColor,
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: (i) async {
                context.unfocus();
                if (i == TonightNavigationDestination.add.index) {
                  if (context.mounted) {
                    context.pushRoute(
                      WallPhotoCameraPreviewRoute(event: dartz.none()),
                    );
                    i = _selectedIndex;
                  }
                }

                setState(() {
                  _selectedIndex = i;
                });
                tabsRouter.setActiveIndex(i);
              },
              destinations: [
                const NavigationDestination(
                  icon: FaIcon(FontAwesomeIcons.fire),
                  label: 'Tonight',
                ),
                NavigationDestination(
                  icon: const FaIcon(FontAwesomeIcons.compass),
                  label: S().discover,
                ),
                NavigationDestination(
                  icon: const FaIcon(
                    FontAwesomeIcons.paperPlane,
                  ),
                  label: S().publish,
                ),
                NavigationDestination(
                  icon: const FaIcon(FontAwesomeIcons.user),
                  label: S().profile,
                ),
              ],
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
        final isEventsTabSelected = context
            .select((TonightEventsBloc bloc) => bloc.state.isEventsTabSelected);
        return TonightAppBar(
          backgroundColor: context.backgroundColor,
          actions: !isEventsTabSelected
              ? null
              : [
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.sliders,
                      size: 20,
                    ),
                    onPressed: () => context.pushRoute(
                      EventFiltersRoute(
                        blocContext: context,
                        selectedFilters: context
                            .read<TonightEventsBloc>()
                            .state
                            .eventFilters,
                        eventFiltersPageType: EventFiltersPageType.tonight,
                      ),
                    ),
                  ),
                ],
        );
      case TonightNavigationDestination.discover:
        return PreferredSize(
          preferredSize: Size.fromHeight(context.padding.top),
          child: Container(
            color: context.backgroundColor,
            height: context.padding.top,
          ),
        );
      case TonightNavigationDestination.add:
        return const TonightAppBar();
      case TonightNavigationDestination.profile:
        return TonightAppBar(
          title: '',
          backgroundColor: context.backgroundColor,
        );
    }
  }
}
