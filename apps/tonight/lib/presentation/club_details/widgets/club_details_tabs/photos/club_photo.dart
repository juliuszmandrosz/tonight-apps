import 'package:flutter/material.dart';

class ClubPhoto extends StatelessWidget {
  const ClubPhoto({Key? key, required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: Image.network(url).image, fit: BoxFit.cover),
      ),
    );
  }
}
