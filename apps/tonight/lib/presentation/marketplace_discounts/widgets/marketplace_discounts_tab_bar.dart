import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/image_back_button.dart';

class MarketplaceDiscountsTabBar extends StatelessWidget {
  const MarketplaceDiscountsTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ImageBackButton(isTransparent: true),
        const Spacer(),
        TabBar(
          dividerColor: Colors.transparent,
          isScrollable: true,
          labelPadding: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.only(bottom: 12),
          labelColor: context.primaryColor.lighten(0.2),
          labelStyle: context.titleSmall,
          unselectedLabelColor: context.onSurfaceColor.withOpacity(0.6),
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: context.primaryColor.lighten(0.2),
                width: 2,
              ),
            ),
          ),
          tabs: [
            // TODO - add translations
            Tab(
              child: Text(
                'Dostępne zniżki',
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ),
            Tab(
              child: Text(
                'Twoje zniżki',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
