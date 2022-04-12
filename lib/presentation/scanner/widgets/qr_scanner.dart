import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';

class QrScanner extends StatelessWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cameraController = MobileScannerController();

    return MobileScanner(
      allowDuplicates: false,
      controller: _cameraController,
      onDetect: (barcode, args) {
        final String? code = barcode.rawValue;
        context.read<ScannerCubit>().scanTicket(code);
      },
    );
  }
}
