import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:translations/raver_translations.dart';

class VipProceedToPayButton extends StatelessWidget {
  const VipProceedToPayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VipCheckoutCubit, VipCheckoutState>(
      buildWhen: (previous, current) =>
          previous.proceedingToPaymentStatus !=
          current.proceedingToPaymentStatus,
      builder: (context, state) {
        return Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0 &&
              !state.proceedingToPaymentStatus.isLoading(),
          child: SizedBox(
            width: 300,
            child: FloatingActionButton.extended(
              onPressed: () =>
                  context.read<VipCheckoutCubit>().proceedToPayForVip(),
              label: Text(S().proceedToPay),
              icon: const FaIcon(FontAwesomeIcons.coins),
            ),
          ),
        );
      },
    );
  }
}
