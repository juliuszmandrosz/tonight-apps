import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver/application/invoice_data/invoice_data_type.dart';
import 'package:raver_common/raver_common.dart';

class InvoiceDataTypeInput extends StatelessWidget {
  const InvoiceDataTypeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) =>
          previous.invoiceDataType != current.invoiceDataType ||
          previous.status != current.status,
      builder: (context, state) {
        return Column(
          children: [
            // TODO - add translations
            RadioListTile<InvoiceDataType>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: const Text('Osoba fizyczna'),
              value: InvoiceDataType.individual,
              groupValue: state.invoiceDataType,
              onChanged: (value) => onChanged(value!, context),
            ),
            RadioListTile<InvoiceDataType>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: const Text('Firma'),
              value: InvoiceDataType.company,
              groupValue: state.invoiceDataType,
              onChanged: (value) => onChanged(value!, context),
            ),
          ],
        );
      },
    );
  }

  onChanged(InvoiceDataType value, BuildContext context) {
    context.read<InvoiceDataCubit>().invoiceDataTypeChanged(value);
  }
}
