import 'package:common/application/cubit_status.dart';
import 'package:common/extensions/cubit_status_extensions.dart';
import 'package:common/presentation/core/no_results.dart';
import 'package:common/presentation/failure_info.dart';
import 'package:common/presentation/infinite_list.dart';
import 'package:common/presentation/wave_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/marketplace_discounts/marketplace_discounts_bloc.dart';
import 'package:tonight/presentation/marketplace_discounts/widgets/user_discount_list_tile.dart';
import 'package:translations/translations.dart';

class UserDiscountList extends HookWidget {
  const UserDiscountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<MarketplaceDiscountsBloc>().add(
            const MarketplaceDiscountsEvent.userDiscountsFetched(),
          );
      return null;
    }, const []);

    return BlocBuilder<MarketplaceDiscountsBloc, MarketplaceDiscountsState>(
      builder: (context, state) {
        switch (state.getUserDiscountsStatus) {
          case CubitStatus.initial:
            return const SizedBox.shrink();
          case CubitStatus.loading:
            return const WaveLoadingIndicator();
          case CubitStatus.failure:
            return FailureInfo(
              retryCallback: () => context.read<MarketplaceDiscountsBloc>().add(
                    const MarketplaceDiscountsEvent.userDiscountsFetched(),
                  ),
            );
          case CubitStatus.success:
            if (state.userDiscounts.isEmpty) {
              return NoResults(
                message: S().noDiscountsClaimed,
                onRefresh: () => context.read<MarketplaceDiscountsBloc>().add(
                      const MarketplaceDiscountsEvent.userDiscountsFetched(),
                    ),
              );
            }
            return RefreshIndicator(
              onRefresh: () async =>
                  context.read<MarketplaceDiscountsBloc>().add(
                        const MarketplaceDiscountsEvent.userDiscountsFetched(),
                      ),
              child: InfiniteList(
                itemCount: state.userDiscounts.length,
                onFetchData: () => context.read<MarketplaceDiscountsBloc>().add(
                      const MarketplaceDiscountsEvent
                          .nextPageUserDiscountsFetched(),
                    ),
                hasReachedMax: state.hasReachedEndOfUserDiscounts,
                isLoading: state.fetchNextPageUserDiscountsStatus.isLoading(),
                hasError: state.fetchNextPageUserDiscountsStatus.isFailure(),
                separatorBuilder: (_, __) => const Divider(),
                itemBuilder: (_, i) => UserDiscountListTile(
                  discount: state.userDiscounts[i],
                ),
              ),
            );
        }
      },
    );
  }
}
