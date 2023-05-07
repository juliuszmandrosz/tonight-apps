import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/tonight/tonight_cubit.dart';
import 'package:tonight/application/tonight/tonight_tab.dart';
import 'package:translations/translations.dart';

class TonightSliverAppBar extends StatelessWidget {
  final bool innerBoxIsScrolled;

  const TonightSliverAppBar({
    required this.innerBoxIsScrolled,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.backgroundColor,
      automaticallyImplyLeading: false,
      toolbarHeight: 4,
      forceElevated: innerBoxIsScrolled,
      bottom: TabBar(
        onTap: (i) {
          i == 0
              ? context.read<TonightCubit>().selectTab(TonightTab.events)
              : context.read<TonightCubit>().selectTab(TonightTab.photos);
        },
        dividerColor: Colors.transparent,
        isScrollable: true,
        labelPadding: const EdgeInsets.symmetric(horizontal: 12),
        padding: const EdgeInsets.only(bottom: 4),
        labelColor: context.onSurfaceColor,
        labelStyle: context.titleMedium,
        unselectedLabelColor: context.onSurfaceColor.withOpacity(0.6),
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.transparent,
              width: 0,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              S().events(2),
              textAlign: TextAlign.center,
            ),
          ),
          Tab(
            child: Text(
              S().photos(2),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
