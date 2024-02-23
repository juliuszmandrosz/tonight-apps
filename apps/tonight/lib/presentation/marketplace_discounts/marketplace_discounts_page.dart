import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/available_discount_list.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/marketplace_discounts_tab_bar.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/user_discount_list.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/user_raver_coins_balance.dart';

class MarketplaceDiscountsPage extends StatelessWidget {
  final int availableRaverCoins;

  const MarketplaceDiscountsPage({
    required this.availableRaverCoins,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MarketplaceDiscountsBloc>()
        ..add(const MarketplaceDiscountsEvent.availableDiscountsFetched())
        ..add(MarketplaceDiscountsEvent.stateInitialized(availableRaverCoins)),
      child: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: BlocListener<MarketplaceDiscountsBloc,
                MarketplaceDiscountsState>(
              listener: (context, state) {},
              child: const Column(
                children: [
                  MarketplaceDiscountsTabBar(),
                  UserRaverCoinsBalance(),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          AvailableDiscountList(),
                          UserDiscountList(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
