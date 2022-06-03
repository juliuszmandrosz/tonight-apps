import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/domain/discounts/entities/collected_discount_entity.dart';
import 'package:raver_partners/presentation/add_event/widgets/cost/discount_list_tile.dart';

class AvailableDiscounts extends StatelessWidget {
  const AvailableDiscounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.availableDiscounts != current.availableDiscounts ||
          previous.discountsStatus != current.discountsStatus,
      builder: (context, state) {
        final groupedDiscounts = <int, List<CollectedDiscount>>{};
        for (var discount in state.availableDiscounts) {
          var group = groupedDiscounts[discount.percentageOff];
          groupedDiscounts[discount.percentageOff] = [...?group, discount];
        }

        return Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                // TODO - add translation
                'Dostępne zniżki',
                style: context.subtitle1,
              ),
            ),
            const SizedBox(height: 10),
            state.discountsStatus.isLoading()
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, i) => const Divider(),
                    itemCount: groupedDiscounts.length + 1,
                    itemBuilder: (ctx, i) => i >= groupedDiscounts.length
                        ? const SizedBox()
                        : DiscountListTile(
                            percentageOff: groupedDiscounts.keys.elementAt(i),
                            collectedDiscounts:
                                groupedDiscounts.values.elementAt(i),
                          ),
                  ),
          ],
        );
      },
    );
  }
}
