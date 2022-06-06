import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver/application/invoice_data/invoice_data_cubit.dart';
import 'package:raver/application/invoice_data/invoice_data_type.dart';
import 'package:raver/injection.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/invoice_data/widgets/country_code_input.dart';
import 'package:raver/presentation/invoice_data/widgets/invoice_data_type_input.dart';
import 'package:raver/presentation/invoice_data/widgets/name_input.dart';
import 'package:raver/presentation/invoice_data/widgets/update_invoice_data_button.dart';
import 'package:raver/presentation/invoice_data/widgets/vat_number_input.dart';
import 'package:raver_common/raver_common.dart';

class InvoiceDataPage extends StatelessWidget {
  const InvoiceDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<InvoiceDataCubit>(),
      child: LoaderOverlay(
        overlayColor: context.shadowColor,
        child: Scaffold(
          // TODO - add translation
          appBar: const RaverAppBar(title: 'Dane do faktury'),
          floatingActionButton: const UpdateInvoiceDataButton(),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: BlocConsumer<InvoiceDataCubit, InvoiceDataState>(
              listenWhen: (previous, current) =>
                  previous.errorMessage != current.errorMessage ||
                  previous.status != current.status,
              buildWhen: (previous, current) =>
                  previous.invoiceDataType != current.invoiceDataType,
              listener: (context, state) {
                state.errorMessage.fold(
                  () {},
                  (error) => context.showSnackbarMessage(error),
                );

                state.status.isSubmissionInProgress
                    ? context.loaderOverlay.show()
                    : context.loaderOverlay.hide();

                if (state.status.isSubmissionSuccess) {
                  // TODO - add translation
                  var poppedPages = 0;
                  AutoRouter.of(context).popUntil((_) => poppedPages++ == 1);

                  context.showSnackbarMessage(
                    'Pomyślnie zaaktualizowano dane do faktury',
                  );
                }
              },
              builder: (context, state) {
                return ListView(
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
