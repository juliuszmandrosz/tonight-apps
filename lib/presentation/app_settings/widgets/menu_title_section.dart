import 'package:flutter/material.dart';

class MenuTitleSection extends StatelessWidget {
  final String text;

  const MenuTitleSection({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: Row(
          children: [
            Text(text),
          ],
        ),
      ),
    );
  }
}
