import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:formz/formz.dart';

class TonightTextInput extends HookWidget {
  final String? value;
  final Function(String) onChanged;
  final String? errorText;
  final FormzStatus status;
  final TextInputType keyboardType;
  final String? label;

  const TonightTextInput({
    required this.value,
    required this.onChanged,
    required this.errorText,
    required this.status,
    this.keyboardType = TextInputType.text,
    this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController(text: value ?? '');
    return TextField(
      controller: textController,
      onChanged: onChanged,
      keyboardType: keyboardType,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      decoration: InputDecoration(
        labelText: label,
        errorText: status.isInvalid ? errorText : null,
        errorMaxLines: 2,
      ),
    );
  }
}
