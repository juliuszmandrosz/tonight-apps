import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowEditEventDialogButton extends StatelessWidget {
  final Widget dialog;
  final bool isValueEmpty;

  const ShowEditEventDialogButton({
    required this.dialog,
    required this.isValueEmpty,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (ctx) => dialog,
        );
      },
      icon:
          isValueEmpty ? const FaIcon(Icons.add) : const Icon(Icons.mode_edit),
    );
  }
}
