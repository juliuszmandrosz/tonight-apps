import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class VipProceedToPayButton extends StatelessWidget {
  const VipProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () => context.read<VipCheckoutCubit>().proceedToPayForVip(),
        child: Text(S().proceedToPay),
      ),
    );
  }
}
