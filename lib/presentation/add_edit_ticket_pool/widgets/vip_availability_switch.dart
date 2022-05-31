import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

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
            title: Text(
              S().allowVipTickets,
              style: context.subtitle1,
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
