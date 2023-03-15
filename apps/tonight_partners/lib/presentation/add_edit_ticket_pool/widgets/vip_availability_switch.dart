import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:translations/generated/l10n.dart';

class VipAvailabilitySwitch extends StatelessWidget {
  const VipAvailabilitySwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEditTicketPoolCubit, AddEditTicketPoolState>(
      buildWhen: (previous, current) =>
          previous.isVipEnabled != current.isVipEnabled,
      builder: (context, state) {
        return InputDecorator(
          decoration: const InputDecoration().copyWith(
            contentPadding: const EdgeInsets.all(5),
          ),
          child: SwitchListTile.adaptive(
            activeColor: context.primaryColor,
            title: Text(
              S().allowVipTickets,
              style: context.titleMedium,
            ),
            value: state.isVipEnabled,
            onChanged: (value) => context
                .read<AddEditTicketPoolCubit>()
                .isVipEnabledChanged(value),
          ),
        );
      },
    );
  }
}
