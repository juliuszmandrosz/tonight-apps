import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class DeleteEventDetailButton extends StatelessWidget {
  final VoidCallback onDeleted;

  const DeleteEventDetailButton({
    required this.onDeleted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: () async {
        final result = await context.showDeleteConfirmationDialog();
        if (result ?? false) {
          onDeleted();
        }
      },
      icon: Icon(
        Icons.delete_rounded,
        size: 30,
        color: theme.colorScheme.primary,
      ),
    );
  }
}
