import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/discounts/discounts_cubit.dart';
import 'package:raver_partners/presentation/core/dots_loading_indicator.dart';
import 'package:raver_partners/presentation/discounts/widgets/discount_list_tile.dart';
import 'package:raver_partners/presentation/routes/app_router.dart';

class DiscountList extends StatelessWidget {
  const DiscountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DiscountsCubit, DiscountsState>(
      listener: (context, state) {
        if (state.status.isFailure()) {
          context.pushRoute(
            FailureRoute(
              retryCallback: () =>
                  context.read<DiscountsCubit>().getDiscounts(),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state.status.isInitial() || state.status.isFailure()) {
          return Container();
        }
        return state.status.isLoading()
            ? const DotsLoadingIndicator()
            : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, i) => const Divider(),
                itemCount: state.discounts.length + 1,
                itemBuilder: (ctx, i) => i >= state.discounts.length
                    ? const SizedBox()
                    : DiscountListTile(
                        discount: state.discounts[i],
                        sales: state.clubSales.getOrCrash(),
                      ),
              );
      },
    );
  }
}
