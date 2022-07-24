import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:raver/presentation/core/raver_list_tile_with_title_and_subtitle.dart';
import 'package:raver/presentation/routes/app_router.gr.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_translations/raver_translations.dart';

class VipCheckoutInvoiceData extends StatelessWidget {
  const VipCheckoutInvoiceData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VipCheckoutCubit, VipCheckoutState>(
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
                                RaverListTileWithTitleAndSubtitle(
                                  title: hasVatNumber
                                      ? S().companyName
                                      : S().fullName,
                                  subtitle: name!,
                                ),
                                if (hasVatNumber)
                                  Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      RaverListTileWithTitleAndSubtitle(
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
                                  await context.pushRoute<CustomerData>(
                                InvoiceDataRoute(
                                  invoiceData: state.customerData.getOrCrash(),
                                ),
                              );

                              if (result != null) {
                                final ticketCheckoutCubit =
                                    context.read<VipCheckoutCubit>();

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
