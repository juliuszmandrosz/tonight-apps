import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/invoice_data/invoice_data_cubit.dart';
import 'package:tonight/application/invoice_data/invoice_data_type.dart';
import 'package:translations/translations.dart';

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
            RadioListTile<InvoiceDataType>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: Text(S().naturalPerson),
              value: InvoiceDataType.individual,
              groupValue: state.invoiceDataType,
              onChanged: (value) => onChanged(value!, context),
            ),
            RadioListTile<InvoiceDataType>(
              contentPadding: EdgeInsets.zero,
              activeColor: context.primaryColor,
              title: Text(S().company),
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
