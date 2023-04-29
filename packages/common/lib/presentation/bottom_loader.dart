import 'package:common/common.dart';
import 'package:flutter/material.dart';

class BottomLoader extends StatelessWidget {
  const BottomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: SizedBox(
          height: 24,
          width: 24,
          child: CircleLoadingIndicator(size: 20),
        ),
      ),
    );
  }
}
