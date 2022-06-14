import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class FailurePage extends StatefulWidget {
  final Function retryCallback;

  const FailurePage({required this.retryCallback, Key? key}) : super(key: key);

  @override
  State<FailurePage> createState() => _FailurePageState();
}

class _FailurePageState extends State<FailurePage> {
  var canPop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => canPop,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Lottie.asset(
                  'assets/animations/error_animation.json',
                  frameRate: FrameRate(60),
                  height: 250,
                ),
                const SizedBox(height: 10),
                Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      S().serverError,
                      style: context.subtitle1.copyWith(height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                      canPop = true;
                      widget.retryCallback();
                      context.popRoute();
                    },
                    // TODO - add translation
                    child: const Text('Spróbuj ponownie'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
