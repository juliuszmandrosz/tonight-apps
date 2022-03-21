import 'package:flutter/material.dart';

class ProfileMenuListTile extends StatelessWidget {
  final Function() onTap;
  final String text;

  const ProfileMenuListTile({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: const Icon(Icons.keyboard_arrow_right),
      onTap: () => onTap(),
    );
  }
}
