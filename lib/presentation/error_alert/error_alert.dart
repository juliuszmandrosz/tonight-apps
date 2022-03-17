import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:raver/generated/l10n.dart';

class ErrorAlert extends StatelessWidget {
  final String errorMessage;

  const ErrorAlert({Key? key, required this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      title: Text(S().errorDialogTitle),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          errorMessage,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Lottie.asset(
                        "assets/animations/failure_cross_anim.json",
                        repeat: true,
                        fit: BoxFit.contain,
                        width: 100,
                        frameRate: FrameRate(60),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (Platform.isAndroid)
                    TextButton(
                        onPressed: () => closeApp(),
                        child: Text(S().exitButtonTitle)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void closeApp() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    //TODO: There is no possibility to close or even minimize the app on ios platform
  }
}
