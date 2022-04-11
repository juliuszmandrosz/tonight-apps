import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/price.dart';
import 'package:raver_translations/raver_translations.dart';

class EventPriceInput extends HookWidget {
  const EventPriceInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: '${context.read<AddEventCubit>().state.price.value ?? ''}',
    );
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.price != current.price || previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: _controller,
          onChanged: (value) =>
              context.read<AddEventCubit>().priceChanged(int.tryParse(value)),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: S().price,
            errorText: getPriceErrorMessage(state),
          ),
        );
      },
    );
  }
}
