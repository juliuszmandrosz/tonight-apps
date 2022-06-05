import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:raver_partners/presentation/core/selected_page.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class RaverPartnersFab extends StatelessWidget {
  final SelectedPage selectedPage;

  const RaverPartnersFab({
    required this.selectedPage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        switch (selectedPage) {
          case SelectedPage.overview:
            break;
          case SelectedPage.events:
            context.pushRoute(const AddEventRoute());
            break;
          case SelectedPage.rewards:
            context.pushRoute(const AddRewardRoute());
            break;
          case SelectedPage.selectors:
            context.pushRoute(const InviteSelectorRoute());
            break;
        }
      },
      child: const Icon(Icons.add),
    );
  }
}
