import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TicketLogoAnimation extends StatelessWidget {
  const TicketLogoAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/animations/tickets_logo.json',
        frameRate: FrameRate(60),
      ),
    );
  }
}
