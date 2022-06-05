import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/vip_info.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutIsVipSwitch extends StatelessWidget {
  const TicketCheckoutIsVipSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) => previous.isVip != current.isVip,
      builder: (context, state) {
        return Column(
          children: [
            InputDecorator(
              decoration: const InputDecoration().copyWith(
                contentPadding: const EdgeInsets.all(5),
              ),
              child: SwitchListTile.adaptive(
                title: Text(
                  S().vip,
                  style: context.subtitle1,
                ),
                value: state.isVip,
                onChanged: (value) =>
                    context.read<TicketCheckoutCubit>().isVipChanged(value),
              ),
            ),
            if (!state.isVip)
              Column(
                children: const [
                  SizedBox(height: 20),
                  VipInfo(),
                ],
              ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
