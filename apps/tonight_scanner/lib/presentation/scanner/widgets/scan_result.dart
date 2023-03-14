import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';
import 'package:tonight_scanner/application/scanner/scanner_cubit.dart';

class ScanResult extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String message;

  const ScanResult({
    required this.color,
    required this.icon,
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScannerCubit, ScannerState>(
      builder: (context, state) {
        return Center(
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: FaIcon(
                    icon,
                    size: 60,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              AutoSizeText(
                message,
                style: context.headline5.copyWith(
                  color: color,
                ),
                maxLines: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
