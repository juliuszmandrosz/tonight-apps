import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:formz/formz.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver_common/raver_common.dart';

class UpdateInvoiceDataButton extends StatelessWidget {
  const UpdateInvoiceDataButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceDataCubit, InvoiceDataState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0,
          child: FloatingActionButton(
            onPressed: () =>
                context.read<InvoiceDataCubit>().updateInvoiceData(),
            child: state.status.isSubmissionInProgress
                ? SpinKitThreeBounce(
                    color: context.onSurfaceColor,
                    size: 16,
                  )
                : const Icon(Icons.save),
          ),
        );
      },
    );
  }
}
