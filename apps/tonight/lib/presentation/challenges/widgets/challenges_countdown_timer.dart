import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class ChallengesCountdownTimer extends StatefulWidget {
  final int secondsLeft;
  final void Function() onTimerCompleted;

  const ChallengesCountdownTimer({
    required this.secondsLeft,
    required this.onTimerCompleted,
    Key? key,
  }) : super(key: key);

  @override
  State<ChallengesCountdownTimer> createState() =>
      _ChallengesCountdownTimerState();
}

class _ChallengesCountdownTimerState extends State<ChallengesCountdownTimer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Timer _timer;
  int _seconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animationController.repeat(reverse: true);
  }

  @override
  void didUpdateWidget(ChallengesCountdownTimer oldWidget) {
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
    _animationController.dispose();
    super.dispose();
  }

  Map<String, int> getTimeSegments(int value) {
    final days = value ~/ 86400;
    final hours = (value % 86400) ~/ 3600;
    final minutes = (value % 3600) ~/ 60;
    final seconds = value % 60;
    return {
      S().days.toUpperCase(): days,
      S().hours.toUpperCase(): hours,
      S().minutes.toUpperCase(): minutes,
      S().seconds.toUpperCase(): seconds,
    };
  }

  @override
  Widget build(BuildContext context) {
    final timeSegments = getTimeSegments(widget.secondsLeft - _seconds);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.surfaceColor,
            context.surfaceColor.lighten(.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 8.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Czas na wykonanie wyzwań:",
            style: context.titleSmall,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: timeSegments.entries.map(
              (e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Text(
                        '${e.value}',
                        style: context.titleLarge
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        e.key.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
