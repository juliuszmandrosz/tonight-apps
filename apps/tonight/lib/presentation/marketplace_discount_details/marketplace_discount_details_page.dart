import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/marketplace_discount_details/marketplace_discount_details_cubit.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/marketplace_discount_details/widgets/not_enough_raver_coins_info.dart';
import 'package:tonight/presentation/marketplace_discount_details/widgets/redeem_discount_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class MarketplaceDiscountDetailsPage extends StatelessWidget {
  final MarketplaceDiscount discount;
  final int availableRaverCoins;
  final BuildContext blocContext;
  final bool isNavigatedFromDashboard;
  final String? heroTag;

  const MarketplaceDiscountDetailsPage({
    required this.discount,
    required this.blocContext,
    required this.availableRaverCoins,
    this.isNavigatedFromDashboard = false,
    this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hasEnoughRaverCoins = availableRaverCoins >= discount.price;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MarketplaceDiscountDetailsCubit>(),
        ),
        if (!isNavigatedFromDashboard)
          BlocProvider.value(
            value: blocContext.read<MarketplaceDiscountsBloc>(),
          ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: TonightAppBar(title: discount.name),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: hasEnoughRaverCoins
              ? RedeemDiscountButton(discount: discount)
              : NotEnoughRaverCoinsInfo(
                  discountPrice: discount.price,
                  availableRaverCoins: availableRaverCoins,
                ),
          body: TonightOverlay(
            child: BlocListener<MarketplaceDiscountDetailsCubit,
                MarketplaceDiscountDetailsState>(
              listener: (context, state) {
                state.snackbarMessage.fold(
                  () {},
                  (msg) => context.showSnackbarMessage(msg),
                );

                state.redeemDiscountStatus.isLoading()
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (!state.redeemDiscountStatus.isSuccess() ||
                    state.redeemedDiscount.isNone()) return;

                if (isNavigatedFromDashboard) {
                  context.router.popUntil(
                    (route) => route.settings.name == WelcomeLoaderRoute.name,
                  );
                  context.pushRoute(
                    UserMarketplaceDiscountDetailsRoute(
                      discount: state.redeemedDiscount.getOrCrash(),
                    ),
                  );
                } else {
                  context.read<MarketplaceDiscountsBloc>().add(
                      MarketplaceDiscountsEvent.discountRedeemed(discount));
                  context.router.popUntil((route) =>
                      route.settings.name == MarketplaceDiscountsRoute.name);
                  context.pushRoute(
                    UserMarketplaceDiscountDetailsRoute(
                      discount: state.redeemedDiscount.getOrCrash(),
                    ),
                  );
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Hero(
                      tag: heroTag ?? '',
                      child: NetworkPhoto(
                        photoUrl: discount.imageUrl,
                        photoHeight: context.height * 0.5,
                        loaderSize: 32,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        discount.description,
                        style: context.bodyMedium.copyWith(
                          height: 1.5,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    hasEnoughRaverCoins
                        ? const SizedBox(height: 70)
                        : const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
