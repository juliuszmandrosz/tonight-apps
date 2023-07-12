import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/ticket_checkout/bloc/ticket_checkout_bloc.dart';
import 'package:translations/translations.dart';

class TicketCheckoutPromotionCode extends HookWidget {
  const TicketCheckoutPromotionCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(
      text: context.read<TicketCheckoutBloc>().state.promotionCode.code,
    );

    Widget? getSuffixIcon(TicketCheckoutState state) {
      if (state.invalidPromotionCodeMessage.isSome() ||
          state.promotionCodeStatus.isSuccess()) {
        return InkWell(
          onTap: () => context
              .read<TicketCheckoutBloc>()
              .add(const TicketCheckoutEvent.promotionCodeResetted()),
          child: const Icon(Icons.clear),
        );
      }

      return null;
    }

    Widget? getSuffix(TicketCheckoutState state) {
      if (state.promotionCodeStatus.isLoading()) {
        return const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(),
        );
      }

      if (controller.text.isNotEmpty &&
          state.invalidPromotionCodeMessage.isNone()) {
        return TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {
            context.unfocus();
            context
                .read<TicketCheckoutBloc>()
                .add(const TicketCheckoutEvent.promotionCodeFetched());
          },
          child: Text(S().apply),
        );
      }

      return null;
    }

    return BlocBuilder<TicketCheckoutBloc, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.promotionCode != current.promotionCode ||
          previous.promotionCodeStatus != current.promotionCodeStatus ||
          previous.invalidPromotionCodeMessage !=
              current.invalidPromotionCodeMessage,
      builder: (context, state) {
        if (state.promotionCodeStatus.isSuccess()) {
          context.unfocus();
        }

        return state.promotionCodeStatus.isSuccess()
            ? InputDecorator(
                decoration: const InputDecoration().copyWith(
                  label: Text(S().appliedPromotionCode),
                  contentPadding: const EdgeInsets.all(15),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Chip(
                    backgroundColor: context.surfaceColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    label: SizedBox(
                      width: 100,
                      height: 40,
                      child: Center(
                        child: Text(
                          state.promotionCode.code.toUpperCase(),
                          style: context.titleMedium,
                        ),
                      ),
                    ),
                    avatar: Text(
                      '-${state.promotionCode.amountOff}'
                      '${getCurrencySymbolFromCode(state.promotionCode.currency)}',
                      style: context.titleMedium,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onDeleted: () => context
                        .read<TicketCheckoutBloc>()
                        .add(const TicketCheckoutEvent.promotionCodeResetted()),
                  ),
                ),
              )
            : TextField(
                controller: controller,
                textCapitalization: TextCapitalization.characters,
                onChanged: (value) => context
                    .read<TicketCheckoutBloc>()
                    .add(TicketCheckoutEvent.promotionCodeChanged(value)),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: S().addPromotionCode,
                  errorText: state.invalidPromotionCodeMessage.fold(
                    () => null,
                    (error) => error,
                  ),
                  suffixIcon: getSuffixIcon(state),
                  suffix: getSuffix(state),
                  errorMaxLines: 2,
                ),
              );
      },
    );
  }
}
