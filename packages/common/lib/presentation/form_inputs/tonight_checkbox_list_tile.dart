import 'package:common/common.dart';
import 'package:common/presentation/form_inputs/tonight_input_decorator.dart';
import 'package:flutter/material.dart';

class TonightCheckboxListTile extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool?) onChanged;

  const TonightCheckboxListTile({
    required this.title,
    required this.value,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightInputDecorator(
      child: CheckboxListTile(
        dense: true,
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: context.primaryColor,
        title: Text(title),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
