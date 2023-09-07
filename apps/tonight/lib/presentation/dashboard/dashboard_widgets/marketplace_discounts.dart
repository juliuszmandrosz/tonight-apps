import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/marketplace_discount_card.dart';

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
            // TODO - add translation
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Zniżki w Marketplace',
                  style: context.titleMedium.copyWithSecondaryColor(),
                ),
              ),
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
