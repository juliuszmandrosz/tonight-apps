import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class EditEventAlertDialog extends StatelessWidget {
  final Widget content;
  final String title;
  final VoidCallback onSubmitted;
  final bool isValueEmpty;

  const EditEventAlertDialog({
    required this.content,
    required this.title,
    required this.onSubmitted,
    required this.isValueEmpty,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(20),
      title: Text(title),
      contentPadding: const EdgeInsets.only(top: 20),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(S().cancel.toUpperCase()),
        ),
        TextButton(
          onPressed: () => onSubmitted(),
          child: Text(
            isValueEmpty ? S().add.toUpperCase() : S().edit.toUpperCase(),
          ),
        ),
      ],
      content: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: const EdgeInsets.all(20),
        child: content,
      ),
    );
  }
}
