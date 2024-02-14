import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/available_discount_list_tile.dart';
import 'package:translations/translations.dart';

class AvailableDiscountList extends StatelessWidget {
  const AvailableDiscountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketplaceDiscountsBloc, MarketplaceDiscountsState>(
      builder: (context, state) {
        switch (state.getAvailableDiscountsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context.read<MarketplaceDiscountsBloc>().add(
                    const MarketplaceDiscountsEvent.availableDiscountsFetched(),
                  ),
            );
          case CubitStatus.success:
            if (state.availableDiscounts.isEmpty) {
              return NoResults(
                message: S().noDiscountsAvailable,
                onRefresh: () => context.read<MarketplaceDiscountsBloc>().add(
                      const MarketplaceDiscountsEvent
                          .availableDiscountsFetched(),
                    ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async => context
                  .read<MarketplaceDiscountsBloc>()
                  .add(
                    const MarketplaceDiscountsEvent.availableDiscountsFetched(),
                  ),
              child: InfiniteList(
                itemCount: state.availableDiscounts.length,
                onFetchData: () => context.read<MarketplaceDiscountsBloc>().add(
                      const MarketplaceDiscountsEvent
                          .nextPageAvailableDiscountsFetched(),
                    ),
                hasReachedMax: state.hasReachedEndOfAvailableDiscounts,
                isLoading:
                    state.fetchNextPageAvailableDiscountsStatus.isLoading(),
                hasError:
                    state.fetchNextPageAvailableDiscountsStatus.isFailure(),
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (_, i) => AvailableDiscountListTile(
                  discount: state.availableDiscounts[i],
                ),
              ),
            );
        }
      },
    );
  }
}
