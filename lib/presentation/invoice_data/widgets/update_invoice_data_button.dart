import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';

class UpdateInvoiceDataButton extends StatelessWidget {
  const UpdateInvoiceDataButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom == 0,
      child: FloatingActionButton(
        onPressed: () => context.read<InvoiceDataCubit>().updateInvoiceData(),
        child: const Icon(Icons.save),
      ),
    );
  }
}
