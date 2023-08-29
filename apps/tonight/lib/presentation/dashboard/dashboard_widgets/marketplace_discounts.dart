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
        return state.dashboardData.marketplaceDiscounts.fold(
          (_) => const SizedBox.shrink(),
          (discounts) => Column(
            children: [
              // TODO - add translation
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Znizki w Marketplace',
                    style: context.titleMedium.copyWithSecondaryColor(),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                height: 240,
                child: PageView.builder(
                  padEnds: false,
                  controller: PageController(viewportFraction: 0.420),
                  itemCount: discounts.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: i == 0 ? 0 : 4,
                        right: i == discounts.length - 1 ? 0 : 4,
                      ),
                      child: MarketplaceDiscountCard(
                        discount: discounts[i],
                        availableRaverCoins: state
                            .dashboardData.availableRaverCoins
                            .fold((_) => 0, (coins) => coins),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
