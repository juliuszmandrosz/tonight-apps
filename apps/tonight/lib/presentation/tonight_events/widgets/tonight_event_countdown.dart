import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';

class TonightEventCountdown extends StatefulWidget {
  final int secondsLeft;
  final void Function() onTimerCompleted;

  const TonightEventCountdown({
    required this.secondsLeft,
    required this.onTimerCompleted,
    Key? key,
  }) : super(key: key);

  @override
  State<TonightEventCountdown> createState() => _TonightEventCountdownState();
}

class _TonightEventCountdownState extends State<TonightEventCountdown> {
  late Timer _timer;
  int _seconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void didUpdateWidget(TonightEventCountdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.secondsLeft != oldWidget.secondsLeft) {
      _seconds = 0;
      _timer.cancel();
      _startTimer();
    }
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_seconds >= widget.secondsLeft) {
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
    _timer.cancel();
    super.dispose();
  }

  Map<String, int> getTimeSegments(int value) {
    final days = value ~/ 86400;
    final hours = (value % 86400) ~/ 3600;
    final minutes = (value % 3600) ~/ 60;
    final seconds = value % 60;
    // TODO - add translations
    return {
      'DNI': days,
      'GODZIN': hours,
      'MINUT': minutes,
      'SEKUND': seconds,
    };
  }

  @override
  Widget build(BuildContext context) {
    final timeSegments = getTimeSegments(widget.secondsLeft - _seconds);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...timeSegments.entries.map(
          (e) => IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      Text(
                        '${e.value}',
                        style: context.headlineSmall.copyWithSecondaryColor(),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        e.key.toUpperCase(),
                        style: context.titleSmall.copyWith(
                          color: context.secondaryColor.darken(),
                        ),
                      ),
                    ],
                  ),
                ),
                if (e.key != timeSegments.keys.last)
                  const VerticalDivider(
                    width: 10,
                    thickness: 1,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
