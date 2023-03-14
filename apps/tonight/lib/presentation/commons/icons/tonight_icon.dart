import 'package:flutter/material.dart';

abstract class TonightIcon extends StatelessWidget {
  const TonightIcon({Key? key, required this.onPressed}) : super(key: key);
  final Function() onPressed;
}
