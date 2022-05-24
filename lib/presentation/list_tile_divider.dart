import 'package:flutter/material.dart';

class ListTileDivider extends StatelessWidget {
  const ListTileDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 5),
        Divider(),
      ],
    );
  }
}
