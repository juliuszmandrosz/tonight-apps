import 'package:flutter/material.dart';

showConfirmationDialog({
  required BuildContext context,
  required String message,
  required String title,
  required String confirmText,
  required String cancelText,
}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(confirmText),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
        ],
      );
    },
  );
}
