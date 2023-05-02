import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/raver_translations.dart';

class ApplyDiscountSwitch extends StatelessWidget {
  const ApplyDiscountSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.isDiscountApplied != current.isDiscountApplied,
      builder: (context, state) {
        return SwitchListTile.adaptive(
          activeColor: context.primaryColor,
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          title: Text(
            S().applyDiscount,
            style: context.titleMedium,
          ),
          value: state.isDiscountApplied,
          onChanged: (value) =>
              context.read<AddEventCubit>().toggleDiscountAppliedState(),
        );
      },
    );
  }
}
