import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.pop();
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.surfaceColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.arrow_back_rounded,
            size: 24,
          ),
        ),
      ),
    );
  }
}
