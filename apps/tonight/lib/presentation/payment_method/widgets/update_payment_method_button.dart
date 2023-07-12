import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/payment_method/payment_method_cubit.dart';

class UpdatePaymentMethodButton extends StatelessWidget {
  const UpdatePaymentMethodButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: state.cubitStatus.isLoading()
              ? null
              : context.read<PaymentMethodCubit>().updatePaymentMethod,
          child: state.cubitStatus.isLoading()
              ? const CircleLoadingIndicator(size: 24)
              : const Icon(Icons.save),
        );
      },
    );
  }
}
