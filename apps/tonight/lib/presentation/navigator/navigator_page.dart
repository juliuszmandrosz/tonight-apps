import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/chats/bloc/chats_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_page_type.dart';
import 'package:tonight/application/tonight/tonight_cubit.dart';
import 'package:tonight/application/tonight/tonight_tab.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/drawer/tonight_drawer.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
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
          ChatsRoute(),
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

                    if (i == TonightNavigationDestination.add.index) {
                      i = _selectedIndex;
                      await _handleAddPhotoNavigation();
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
                    BlocBuilder<ChatsBloc, ChatsState>(
                      builder: (context, state) {
                        return NavigationDestination(
                          icon: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              const FaIcon(FontAwesomeIcons.comments),
                              Positioned(
                                right: -6,
                                top: -6,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  constraints: const BoxConstraints(
                                    minWidth: 16,
                                    minHeight: 16,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Center(
                                      child: Text(
                                        '${state.chats.where((c) => c.hasUnreadMessage).length}',
                                        textAlign: TextAlign.center,
                                        style: context.bodySmall.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          label: S().chats,
                        );
                      },
                    ),
                    NavigationDestination(
                      icon: const FaIcon(FontAwesomeIcons.user),
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
        final selectedTab =
            context.select((TonightCubit bloc) => bloc.state.selectedTab);
        return TonightAppBar(
          backgroundColor: context.backgroundColor,
          actions: selectedTab == TonightTab.events
              ? [
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
                ]
              : [
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.sliders,
                      size: 20,
                    ),
                    onPressed: () => context.pushRoute(
                      WallPhotoFiltersRoute(
                        blocContext: context,
                        selectedFilters: context
                            .read<WallPhotosBloc>()
                            .state
                            .wallPhotoFilters,
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
      case TonightNavigationDestination.chats:
        return PreferredSize(
          preferredSize: Size.fromHeight(context.padding.top),
          child: Container(
            color: context.backgroundColor,
            height: context.padding.top,
          ),
        );
      case TonightNavigationDestination.profile:
        return TonightAppBar(
          title: '',
          backgroundColor: context.backgroundColor,
        );
    }
  }

  Future<void> _handleAddPhotoNavigation() async {
    if (context.read<AuthCubit>().checkIfPhoneNumberIsVerified()) {
      context.pushRoute(
        WallPhotoCameraPreviewRoute(
          event: dartz.none(),
          timeTask: dartz.none(),
        ),
      );
      return;
    }

    await showConfirmPhoneNumberDialog(context);
  }
}
