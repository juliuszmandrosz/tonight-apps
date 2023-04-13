import 'package:flutter/material.dart';

class _FlashScreen extends StatefulWidget {
  final VoidCallback onEnd;

  const _FlashScreen({required this.onEnd, Key? key}) : super(key: key);

  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<_FlashScreen> {
  var _visible = false;

  void flash() {
    setState(() {
      _visible = true;
    });
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _visible = false;
      });
      widget.onEnd();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      child: Container(color: Colors.white),
    );
  }
}
