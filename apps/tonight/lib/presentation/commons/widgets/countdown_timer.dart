import 'dart:async';

import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final int secondsLeft;
  final void Function() onTimerCompleted;
  final TextStyle textStyle;

  const CountdownTimer({
    required this.secondsLeft,
    required this.onTimerCompleted,
    this.textStyle = const TextStyle(color: Colors.grey),
    Key? key,
  }) : super(key: key);

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer? _timer;

  int _seconds = 0;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CountdownTimer oldWidget) {
    setState(() {
      _seconds = widget.secondsLeft - widget.secondsLeft;
    });
    super.didUpdateWidget(oldWidget);
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_seconds == widget.secondsLeft) {
          timer.cancel();
          widget.onTimerCompleted();
        } else {
          setState(() {
            _seconds++;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatSeconds(int value) =>
      '${formatDecimal(value ~/ 60)}:${formatDecimal(value % 60)}';

  String formatDecimal(int value) => value < 10 ? '0$value' : value.toString();

  @override
  Widget build(BuildContext context) {
    return Text(
      formatSeconds(widget.secondsLeft - _seconds),
      style: widget.textStyle,
    );
  }
}
