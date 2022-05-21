import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_scanner/presentation/scanner/widgets/scan_another_ticket_button.dart';

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
        return Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: color,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(30),
                    child: FaIcon(
                      icon,
                      size: 60,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Text(
                    message,
                    style: context.headline5.copyWith(
                      color: color,
                      fontSize: 28,
                    ),
                  ),
                ),
                const ScanAnotherTicketButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
