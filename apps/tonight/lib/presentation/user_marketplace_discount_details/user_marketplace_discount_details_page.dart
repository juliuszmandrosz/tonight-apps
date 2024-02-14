import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class UserMarketplaceDiscountDetailsPage extends StatelessWidget {
  final UserMarketplaceDiscount discount;

  const UserMarketplaceDiscountDetailsPage({
    required this.discount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: TonightAppBar(title: discount.name),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: context.width * 0.8,
          height: kButtonHeight,
          child: FloatingActionButton.extended(
            onPressed: () => context.pushRoute(
              MarketplaceProductRoute(url: discount.marketplaceUrl),
            ),
            label: Text(S().goToStore),
            icon: const FaIcon(FontAwesomeIcons.cartShopping),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              NetworkPhoto(
                photoUrl: discount.imageUrl,
                photoHeight: context.height * 0.5,
                loaderSize: 32,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${S().yourCode} -  ${discount.code}',
                      style: context.titleLarge,
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: discount.code));
                        context.showSnackbarMessage(S().copiedToClipboard);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.copy,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
            ],
          ),
        ),
      );
    });
  }
}
