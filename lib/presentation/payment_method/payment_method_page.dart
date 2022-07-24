import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/core/payment_methods_translations.dart';
import 'package:raver/application/payment_method/payment_method_cubit.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/payment_method/widgets/update_payment_method_button.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/application/core/raver_payment_method.dart';
import 'package:raver_payments/domain/domain.dart';

class PaymentMethodPage extends StatelessWidget {
  final CustomerData customerData;

  const PaymentMethodPage({
    required this.customerData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<PaymentMethodCubit>()..initCustomerData(customerData),
      child: BlocConsumer<PaymentMethodCubit, PaymentMethodState>(
        listener: (context, state) async {
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          if (state.cubitStatus.isSuccess()) {
            await context.popRoute<CustomerData>(
              state.updatedCustomerData.getOrCrash(),
            );

            // TODO - add translation
            context.showSnackbarMessage('Sukces');
          }
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: const UpdatePaymentMethodButton(),
            // TODO - add translation
            appBar: const RaverAppBar(title: 'Metoda płatności'),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  RadioListTile<RaverPaymentMethod>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      paymentMethodsTranslations[RaverPaymentMethod.wallet]!,
                    ),
                    value: RaverPaymentMethod.wallet,
                    groupValue: state.selectedPaymentMethod,
                    onChanged: (value) => context
                        .read<PaymentMethodCubit>()
                        .paymentMethodChanged(value!),
                  ),
                  const Divider(),
                  RadioListTile<RaverPaymentMethod>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      paymentMethodsTranslations[RaverPaymentMethod.p24]!,
                    ),
                    value: RaverPaymentMethod.p24,
                    groupValue: state.selectedPaymentMethod,
                    onChanged: (value) => context
                        .read<PaymentMethodCubit>()
                        .paymentMethodChanged(value!),
                  ),
                  const Divider(),
                  RadioListTile<RaverPaymentMethod>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      paymentMethodsTranslations[RaverPaymentMethod.card]!,
                    ),
                    value: RaverPaymentMethod.card,
                    groupValue: state.selectedPaymentMethod,
                    onChanged: (value) => context
                        .read<PaymentMethodCubit>()
                        .paymentMethodChanged(value!),
                  ),
                  const Divider(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
