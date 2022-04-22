import 'package:flutter/material.dart';

abstract class RaverIcon extends StatelessWidget {
  const RaverIcon({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
}
