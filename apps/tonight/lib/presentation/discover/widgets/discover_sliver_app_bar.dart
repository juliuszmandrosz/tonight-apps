import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/discover/widgets/clubs_sliver_app_bar.dart';
import 'package:tonight/presentation/discover/widgets/events_sliver_app_bar.dart';
import 'package:translations/translations.dart';

class DiscoverSliverAppBar extends StatefulWidget {
  final bool innerBoxIsScrolled;

  const DiscoverSliverAppBar({
    required this.innerBoxIsScrolled,
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoverSliverAppBar> createState() => _DiscoverSliverAppBarState();
}

class _DiscoverSliverAppBarState extends State<DiscoverSliverAppBar> {
  var _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 195,
      forceElevated: widget.innerBoxIsScrolled,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Visibility(
                maintainState: true,
                visible: _selectedTabIndex == 0,
                child: const EventsSliverAppBar(),
              ),
              Visibility(
                maintainState: true,
                visible: _selectedTabIndex == 1,
                child: const ClubsSliverAppBar(),
              ),
            ],
          ),
        ),
      ),
      bottom: TabBar(
        dividerColor: Colors.transparent,
        isScrollable: false,
        labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.only(bottom: 12),
        onTap: (i) => setState(() {
          _selectedTabIndex = i;
        }),
        tabs: [
          Tab(
            child: AutoSizeText(
              S().events(2),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
          Tab(
            child: AutoSizeText(
              S().clubs(2),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
