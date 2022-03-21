import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon.dart';

class CircleSocialMedia extends StatelessWidget {
  final RaverIcon raverIcon;

  const CircleSocialMedia({
    Key? key,
    required this.raverIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      child: Padding(padding: const EdgeInsets.all(8.0), child: raverIcon),
    );
  }
}
