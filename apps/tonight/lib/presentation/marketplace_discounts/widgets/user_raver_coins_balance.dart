import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:translations/translations.dart';

class UserRaverCoinsBalance extends StatelessWidget {
  const UserRaverCoinsBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<MarketplaceDiscountsBloc, MarketplaceDiscountsState,
        int>(
      selector: (state) => state.availableRaverCoins,
      builder: (context, availableRaverCoins) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
              child: AutoSizeText(
                '${S().yourQuantityOf} Tonight ${S().tokens(10)}: $availableRaverCoins',
                maxLines: 1,
                style: context.titleMedium,
              ),
            ),
          ),
        );
      },
    );
  }
}
