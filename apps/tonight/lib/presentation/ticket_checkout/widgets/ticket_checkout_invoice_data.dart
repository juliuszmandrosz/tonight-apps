import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:tonight/presentation/core/tonight_list_tile_with_title_and_subtitle.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TicketCheckoutInvoiceData extends StatelessWidget {
  const TicketCheckoutInvoiceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.customerData != current.customerData,
      builder: (context, state) {
        final invoiceData = state.customerData.getOrCrash();
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
                                TonightListTileWithTitleAndSubtitle(
                                  title: hasVatNumber
                                      ? S().companyName
                                      : S().fullName,
                                  subtitle: name!,
                                ),
                                if (hasVatNumber)
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      TonightListTileWithTitleAndSubtitle(
                                        title: S().vatNumber,
                                        subtitle: vatNumber,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          )
                        : AutoSizeText(
                            S().noData,
                            maxLines: 1,
                            style: context.titleMedium,
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
                                  await context.pushRoute<CustomerData>(
                                InvoiceDataRoute(
                                  customerData: state.customerData.getOrCrash(),
                                ),
                              );

                              if (context.mounted && result != null) {
                                final ticketCheckoutCubit =
                                    context.read<TicketCheckoutCubit>();

                                ticketCheckoutCubit.customerDataChanged(result);
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
