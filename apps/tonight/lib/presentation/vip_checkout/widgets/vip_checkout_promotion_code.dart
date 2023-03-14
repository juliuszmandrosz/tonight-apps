import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/vip_checkout/vip_checkout_cubit.dart';
import 'package:translations/translations.dart';

class VipCheckoutPromotionCode extends HookWidget {
  const VipCheckoutPromotionCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<VipCheckoutCubit>().state.promotionCode.code,
    );

    Widget? _getSuffixIcon(VipCheckoutState state) {
      if (state.invalidPromotionCodeMessage.isSome() ||
          state.promotionCodeStatus.isSuccess()) {
        return InkWell(
          onTap: () => context.read<VipCheckoutCubit>().resetPromotionCode(),
          child: const Icon(Icons.clear),
        );
      }

      return null;
    }

    Widget? _getSuffix(VipCheckoutState state) {
      if (state.promotionCodeStatus.isLoading()) {
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
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            context.read<VipCheckoutCubit>().getPromotionCode();
          },
          child: Text(S().apply),
        );
      }

      return null;
    }

    return BlocBuilder<VipCheckoutCubit, VipCheckoutState>(
      buildWhen: (previous, current) =>
          previous.promotionCode != current.promotionCode ||
          previous.promotionCodeStatus != current.promotionCodeStatus ||
          previous.invalidPromotionCodeMessage !=
              current.invalidPromotionCodeMessage,
      builder: (context, state) {
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
                    backgroundColor: context.surfaceColor,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    label: SizedBox(
                      width: 100,
                      height: 40,
                      child: Center(
                        child: Text(
                          state.promotionCode.code.toUpperCase(),
                          style: context.subtitle1,
                        ),
                      ),
                    ),
                    avatar: Text(
                      '-${state.promotionCode.amountOff}'
                      '${getCurrencySymbolFromCode(state.promotionCode.currency)}',
                      style: context.subtitle1,
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onDeleted: () =>
                        context.read<VipCheckoutCubit>().resetPromotionCode(),
                  ),
                ),
              )
            : TextField(
                controller: _controller,
                textCapitalization: TextCapitalization.characters,
                onChanged: (value) => context
                    .read<VipCheckoutCubit>()
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
                  errorMaxLines: 2,
                ),
              );
      },
    );
  }
}
