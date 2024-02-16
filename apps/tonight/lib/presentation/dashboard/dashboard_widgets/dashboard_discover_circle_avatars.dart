import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/discover_circle_avatar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class DashboardDiscoverCircleAvatars extends StatelessWidget {
  const DashboardDiscoverCircleAvatars({super.key});

  @override
  Widget build(BuildContext context) {
    final avatars = [
      DiscoverCircleAvatar(
        label: S().events(2),
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tonight-raver.appspot.com/o/MIS09910.jpg?alt=media&token=660dfbcf-80a0-4f0e-8e3f-5d76aae24a3f',
        onTap: () => context.pushRoute(const DiscoverRoute()),
      ),
      DiscoverCircleAvatar(
        // TODO - add translations
        label: 'Collectives',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tonight-raver.appspot.com/o/IMG_20231117_160446_074.jpg?alt=media&token=24bcf68f-c8de-4201-a9dc-26057c9105a9',
        onTap: () => context.pushRoute(const DiscoverRoute()),
      ),
      DiscoverCircleAvatar(
        label: 'Artists',
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tonight-raver.appspot.com/o/MIS00262.jpg?alt=media&token=646403ef-7be7-49ed-93f6-28248ef7b502',
        onTap: () => context.pushRoute(const DiscoverRoute()),
      ),
      DiscoverCircleAvatar(
        label: S().spots,
        imageUrl:
            'https://firebasestorage.googleapis.com/v0/b/tonight-raver.appspot.com/o/Screenshot-2022-07-23-at-21.58.32.png?alt=media&token=2c8f3e96-832d-4444-9f9a-b26e6a462dd7',
        onTap: () => context.pushRoute(const DiscoverRoute()),
      ),
    ];
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: avatars.length,
        itemBuilder: (_, i) {
          return InkWell(
            onTap: () async {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: avatars[i],
            ),
          );
        },
      ),
    );
  }
}
