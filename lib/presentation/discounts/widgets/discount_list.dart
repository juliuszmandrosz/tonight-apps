import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/discounts/discounts_cubit.dart';
import 'package:raver_partners/presentation/core/ticket_logo_animation.dart';
import 'package:raver_partners/presentation/discounts/widgets/discount_list_tile.dart';

class DiscountList extends StatelessWidget {
  const DiscountList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscountsCubit, DiscountsState>(
      builder: (context, state) {
        return state.status.isLoading()
            ? const TicketLogoAnimation()
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
