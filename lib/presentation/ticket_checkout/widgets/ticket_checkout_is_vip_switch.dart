import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutIsVipSwitch extends StatelessWidget {
  const TicketCheckoutIsVipSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.isVip != current.isVip ||
          previous.vipPrice != current.vipPrice,
      builder: (context, state) {
        return state.vipPrice != null
            ? Column(
                children: [
                  InputDecorator(
                    decoration: const InputDecoration().copyWith(
                      contentPadding: const EdgeInsets.all(5),
                    ),
                    child: SwitchListTile.adaptive(
                      title: Text(S().vip, style: theme.textTheme.subtitle1),
                      value: state.isVip,
                      onChanged: (value) => context
                          .read<TicketCheckoutCubit>()
                          .isVipChanged(value),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
