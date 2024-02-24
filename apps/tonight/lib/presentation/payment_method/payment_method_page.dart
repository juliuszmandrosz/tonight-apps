import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/core/payment_methods_translations.dart';
import 'package:tonight/application/payment_method/payment_method_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/payment_method/widgets/update_payment_method_button.dart';
import 'package:translations/translations.dart';

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

            if (context.mounted) {
              context.showSnackbarMessage(S().paymentMethodUpdatedSuccessfully);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            floatingActionButton: const UpdatePaymentMethodButton(),
            appBar: TonightAppBar(title: S().paymentMethod),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  // RadioListTile<TonightPaymentMethod>(
                  //   contentPadding: EdgeInsets.zero,
                  //   activeColor: context.primaryColor,
                  //   title: Text(
                  //     paymentMethodsTranslations[TonightPaymentMethod.wallet]!,
                  //   ),
                  //   value: TonightPaymentMethod.wallet,
                  //   groupValue: state.selectedPaymentMethod,
                  //   onChanged: (value) => context
                  //       .read<PaymentMethodCubit>()
                  //       .paymentMethodChanged(value!),
                  // ),
                  // const Divider(),
                  RadioListTile<TonightPaymentMethod>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      paymentMethodsTranslations[TonightPaymentMethod.p24]!,
                    ),
                    value: TonightPaymentMethod.p24,
                    groupValue: state.selectedPaymentMethod,
                    onChanged: (value) => context
                        .read<PaymentMethodCubit>()
                        .paymentMethodChanged(value!),
                  ),
                  const Divider(),
                  RadioListTile<TonightPaymentMethod>(
                    contentPadding: EdgeInsets.zero,
                    activeColor: context.primaryColor,
                    title: Text(
                      paymentMethodsTranslations[TonightPaymentMethod.card]!,
                    ),
                    value: TonightPaymentMethod.card,
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
