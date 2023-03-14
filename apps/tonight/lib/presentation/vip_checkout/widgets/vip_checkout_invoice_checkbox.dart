import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:tonight/presentation/core/invoice_info.dart';
import 'package:translations/translations.dart';

class VipCheckoutInvoiceCheckbox extends StatelessWidget {
  const VipCheckoutInvoiceCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VipCheckoutCubit, VipCheckoutState>(
      buildWhen: (previous, current) =>
          previous.sendInvoice != current.sendInvoice,
      builder: (context, state) {
        return Column(
          children: [
            InputDecorator(
              decoration: const InputDecoration().copyWith(
                contentPadding: const EdgeInsets.all(2),
              ),
              child: CheckboxListTile(
                activeColor: context.primaryColor,
                title: Text(
                  S().iWantInvoice,
                  style: context.subtitle1,
                ),
                value: state.sendInvoice,
                onChanged: (value) =>
                    context.read<VipCheckoutCubit>().sendInvoiceChanged(value!),
              ),
            ),
            if (!state.sendInvoice)
              Column(
                children: const [
                  SizedBox(height: 10),
                  InvoiceInfo(),
                ],
              ),
          ],
        );
      },
    );
  }
}
