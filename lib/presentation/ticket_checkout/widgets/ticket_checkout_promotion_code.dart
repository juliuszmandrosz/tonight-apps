import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver/application/ticket_checkout/ticket_checkout_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class TicketCheckoutPromotionCode extends HookWidget {
  const TicketCheckoutPromotionCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<TicketCheckoutCubit>().state.promotionCode.code,
    );

    Widget? _getSuffixIcon(TicketCheckoutState state) {
      if (state.invalidPromotionCodeMessage.isSome() ||
          state.promotionCodeStatus.isSuccess()) {
        return InkWell(
          onTap: () => context.read<TicketCheckoutCubit>().resetPromotionCode(),
          child: const Icon(
            Icons.clear,
            color: Colors.black,
            size: 18,
          ),
        );
      }

      return null;
    }

    Widget? _getSuffix(TicketCheckoutState state) {
      if (state.promotionCodeStatus.isSuccess()) {
        return const SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(),
        );
      }

      if (_controller.text.isNotEmpty &&
          state.invalidPromotionCodeMessage.isNone()) {
        return TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () =>
              context.read<TicketCheckoutCubit>().getPromotionCode(),
          child: Text(S().apply),
        );
      }

      return null;
    }

    return BlocBuilder<TicketCheckoutCubit, TicketCheckoutState>(
      buildWhen: (previous, current) =>
          previous.promotionCode != current.promotionCode ||
          previous.promotionCodeStatus != current.promotionCodeStatus ||
          previous.invalidPromotionCodeMessage !=
              current.invalidPromotionCodeMessage,
      builder: (context, state) {
        final textTheme = Theme.of(context).textTheme;
        if (state.promotionCode.code.isEmpty) {
          _controller.text = '';
          FocusManager.instance.primaryFocus?.unfocus();
        }

        if (state.promotionCodeStatus.isSuccess()) {
          FocusManager.instance.primaryFocus?.unfocus();
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    label: SizedBox(
                      width: 100,
                      height: 40,
                      child: Center(
                        child: Text(
                          state.promotionCode.code.toUpperCase(),
                          style: textTheme.subtitle1,
                        ),
                      ),
                    ),
                    avatar: Text(
                      '-${state.promotionCode.amountOff}'
                      '${getCurrencySymbolFromCode(state.promotionCode.currency)}',
                      style: textTheme.subtitle1,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onDeleted: () => context
                        .read<TicketCheckoutCubit>()
                        .resetPromotionCode(),
                  ),
                ),
              )
            : TextField(
                controller: _controller,
                textCapitalization: TextCapitalization.characters,
                onChanged: (value) => context
                    .read<TicketCheckoutCubit>()
                    .promotionCodeChanged(value),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: S().addPromotionCode,
                  errorText: state.invalidPromotionCodeMessage.fold(
                    () => null,
                    (error) => error,
                  ),
                  suffixIcon: _getSuffixIcon(state),
                  suffix: _getSuffix(state),
                ),
              );
      },
    );
  }
}
