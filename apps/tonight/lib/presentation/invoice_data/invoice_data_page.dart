import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/invoice_data/invoice_data_cubit.dart';
import 'package:tonight/application/invoice_data/invoice_data_type.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/invoice_data/widgets/country_code_input.dart';
import 'package:tonight/presentation/invoice_data/widgets/invoice_data_type_input.dart';
import 'package:tonight/presentation/invoice_data/widgets/name_input.dart';
import 'package:tonight/presentation/invoice_data/widgets/update_invoice_data_button.dart';
import 'package:tonight/presentation/invoice_data/widgets/vat_number_input.dart';
import 'package:translations/raver_translations.dart';

class InvoiceDataPage extends StatefulWidget {
  final CustomerData customerData;

  const InvoiceDataPage({required this.customerData, Key? key})
      : super(key: key);

  @override
  State<InvoiceDataPage> createState() => _InvoiceDataPageState();
}

class _InvoiceDataPageState extends State<InvoiceDataPage> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<InvoiceDataCubit>()..initInvoiceData(widget.customerData),
      child: BlocConsumer<InvoiceDataCubit, InvoiceDataState>(
        listenWhen: (previous, current) =>
            previous.errorMessage != current.errorMessage ||
            previous.status != current.status,
        buildWhen: (previous, current) =>
            previous.invoiceDataType != current.invoiceDataType ||
            previous.status != current.status,
        listener: (context, state) async {
          state.errorMessage.fold(
            () {},
            (error) => context.showSnackbarMessage(error),
          );

          setState(() {
            _isLoading = state.status.isSubmissionInProgress;
          });

          if (state.status.isSubmissionSuccess) {
            await context.popRoute<CustomerData>(
              state.updatedCustomerData.getOrCrash(),
            );

            if (context.mounted) {
              context.showSnackbarMessage(S().invoiceDataUpdatedSuccessfully);
            }
          }
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              return !_isLoading;
            },
            child: Scaffold(
              appBar: TonightAppBar(title: S().invoiceData),
              floatingActionButton: const UpdateInvoiceDataButton(),
              body: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  children: [
                    const InvoiceDataTypeInput(),
                    const SizedBox(height: 20),
                    const NameInput(),
                    if (state.invoiceDataType.isCompany)
                      Column(
                        children: const [
                          SizedBox(height: 20),
                          VatNumberInput(),
                          SizedBox(height: 20),
                          CountryCodeInput(),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
