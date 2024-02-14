import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_discount_card.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class MarketplaceDiscounts extends StatelessWidget {
  const MarketplaceDiscounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final discounts = state.dashboardData.marketplaceDiscounts;
        final user = state.dashboardData.currentUser;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    S().discountsInMarketplace,
                    style: context.titleMedium.copyWithSecondaryColor(),
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushRoute(
                    MarketplaceDiscountsRoute(
                      availableRaverCoins: user.fold(
                        () => 0,
                        (u) => u.raverCoins,
                      ),
                    ),
                  ),
                  child: Text(
                    S().seeMore,
                    style: context.bodyMedium.copyWith(
                      color: context.primaryColor.lighten(.1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 240,
              child: PageView.builder(
                padEnds: false,
                controller: PageController(viewportFraction: 0.460),
                itemCount: discounts.length,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: i == 0 ? 0 : 4,
                      right: i == discounts.length - 1 ? 0 : 4,
                    ),
                    child: MarketplaceDiscountCard(
                      discount: discounts[i],
                      availableRaverCoins: user.fold(
                        () => 0,
                        (data) => data.raverCoins,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
