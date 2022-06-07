import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver/presentation/core/raver_list_tile_with_title_and_subtitle.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/domain/entities/invoice_data_entity.dart';

class TicketCheckoutInvoiceData extends StatelessWidget {
  const TicketCheckoutInvoiceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.invoiceData != current.invoiceData,
      builder: (context, state) {
        final invoiceData = state.invoiceData.getOrCrash();
        final vatNumber = invoiceData.vatNumber;
        final name = invoiceData.name;
        final hasVatNumber = vatNumber != null && vatNumber.isNotEmpty;
        final hasName = name != null && name.isNotEmpty;
        final hasAnyData = hasName || hasVatNumber;
        return Column(
          children: [
            const SizedBox(height: 20),
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 15, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    hasAnyData
                        ? Expanded(
                            child: Column(
                              children: [
                                RaverListTileWithTitleAndSubtitle(
                                  // TODO - add translations
                                  title: hasVatNumber
                                      ? 'Nazwa firmy'
                                      : 'Imię i nazwisko',
                                  subtitle: name!,
                                ),
                                if (hasVatNumber)
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      RaverListTileWithTitleAndSubtitle(
                                        // TODO - add translations
                                        title: 'Numer NIP',
                                        subtitle: vatNumber,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          )
                        // TODO - add translation
                        : AutoSizeText(
                            'Brak danych',
                            maxLines: 1,
                            style: context.subtitle1,
                          ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: hasVatNumber
                                ? colors.secondaryContainer
                                : context.surfaceColor,
                          ),
                          child: IconButton(
                            onPressed: () async {
                              final result =
                                  await context.pushRoute<InvoiceData>(
                                InvoiceDataRoute(
                                  invoiceData: state.invoiceData.getOrCrash(),
                                ),
                              );

                              if (result != null) {
                                final ticketCheckoutCubit =
                                    context.read<TicketCheckoutCubit>();

                                ticketCheckoutCubit.invoiceDataChanged(result);
                              }
                            },
                            icon: Icon(
                              Icons.mode_edit,
                              color: hasVatNumber
                                  ? colors.onSecondaryContainer
                                  : context.onSurfaceColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
