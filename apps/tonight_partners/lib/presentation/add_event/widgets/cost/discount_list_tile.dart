import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:tonight_partners/domain/discounts/partner_discount_entity.dart';

class DiscountListTile extends StatelessWidget {
  final int percentageOff;

  final List<PartnerDiscount> collectedDiscounts;

  const DiscountListTile({
    required this.percentageOff,
    required this.collectedDiscounts,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.appliedDiscount != current.appliedDiscount,
      builder: (context, state) {
        return RadioListTile<int>(
          contentPadding: EdgeInsets.zero,
          activeColor: context.primaryColor,
          title: Text('$percentageOff%'),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              '${collectedDiscounts.length}x',
              style: context.bodyMedium.copyWith(
                color: context.secondaryColor,
              ),
            ),
          ),
          value: percentageOff,
          groupValue: state.appliedDiscount.fold(
            () => null,
            (discount) => discount.percentageOff,
          ),
          onChanged: (value) => context
              .read<AddEventCubit>()
              .appliedDiscountChanged(collectedDiscounts.first),
        );
      },
    );
  }
}
