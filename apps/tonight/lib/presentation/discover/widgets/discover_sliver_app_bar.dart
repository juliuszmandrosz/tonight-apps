import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/application/discover/selected_discover_tab.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/presentation/clubs/widgets/club_city_picker_field.dart';
import 'package:tonight/presentation/events/widgets/event_filters_row.dart';
import 'package:translations/generated/generated.dart';

class DiscoverSliverAppBar extends StatelessWidget {
  final bool innerBoxIsScrolled;

  const DiscoverSliverAppBar({
    required this.innerBoxIsScrolled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiscoverCubit, DiscoverState>(
      listener: (context, state) {
        DefaultTabController.of(context).animateTo(state.selectedTab.index);
      },
      builder: (context, state) {
        final selectedTab = state.selectedTab;
        return SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 195,
          forceElevated: innerBoxIsScrolled,
          backgroundColor: context.backgroundColor,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SearchField(
                    text: state.phraseFilter.phrase,
                    onSubmit: (query) async {
                      context
                          .read<DiscoverCubit>()
                          .applyPhraseFilter(PhraseFilter(phrase: query));
                      switch (selectedTab) {
                        case DiscoverTab.events:
                          context
                              .read<EventsBloc>()
                              .add(EventsEvent.queryChanged(query));
                          break;
                        case DiscoverTab.collectives:
                          // TODO: Handle this case.
                          break;
                        case DiscoverTab.artists:
                          // TODO: Handle this case.
                          break;
                        case DiscoverTab.spots:
                          // TODO: Handle this case.
                          break;
                      }
                    },
                  ),
                  const SizedBox(height: 12),
                  Visibility(
                    maintainState: true,
                    visible: selectedTab == DiscoverTab.events,
                    child: const EventFiltersRow(),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: selectedTab == DiscoverTab.collectives,
                    child: const ClubCityPickerField(),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: selectedTab == DiscoverTab.artists,
                    child: const ClubCityPickerField(),
                  ),
                  Visibility(
                    maintainState: true,
                    visible: selectedTab == DiscoverTab.spots,
                    child: const ClubCityPickerField(),
                  ),
                ],
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.only(bottom: 12),
                  labelColor: context.secondaryColor,
                  labelStyle: context.titleSmall,
                  unselectedLabelColor: context.secondaryColor.withOpacity(0.6),
                  indicatorColor: context.secondaryColor,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: context.secondaryColor,
                        width: 1,
                      ),
                    ),
                  ),
                  onTap: (i) => context.read<DiscoverCubit>().changeTab(
                        DiscoverTab.values.elementAt(i),
                      ),
                  tabs: [
                    Tab(
                      child: AutoSizeText(
                        S().events(2),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const Tab(
                      child: AutoSizeText(
                        // TODO - add translation
                        'Collectives',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const Tab(
                      child: AutoSizeText(
                        'Artists',
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    Tab(
                      child: AutoSizeText(
                        S().spots,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
