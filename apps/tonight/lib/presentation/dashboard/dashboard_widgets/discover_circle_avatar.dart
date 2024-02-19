import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/discover/discover_cubit.dart';
import 'package:tonight/application/discover/selected_discover_tab.dart';
import 'package:tonight/presentation/navigator/tonight_navigation_destinations.dart';

class DiscoverCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final String label;
  final DiscoverTab selectedTab;

  const DiscoverCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.label,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.tabsRouter
            .setActiveIndex(TonightNavigationDestination.discover.index);
        context.read<DiscoverCubit>().changeTab(selectedTab);
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ProfilePictureContainer(
                imageSize: 90,
                profilePictureUrl: imageUrl,
                username: label,
                textStyle: context.titleMedium,
                backgroundColor: Colors.transparent,
                textColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: context.titleSmall.copyWithSecondaryColor(),
          ),
        ],
      ),
    );
  }
}
