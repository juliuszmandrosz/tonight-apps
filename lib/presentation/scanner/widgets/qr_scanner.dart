import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';

class QrScanner extends StatefulWidget {
  const QrScanner({Key? key}) : super(key: key);

  @override
  State<QrScanner> createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  final qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;

  @override
  void reassemble() {
    super.reassemble();
    _resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var scanArea = (size.width < 400 || size.height < 400) ? 250.0 : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: context.onSurfaceColor,
        borderRadius: 10,
        borderLength: 40,
        borderWidth: 5,
        cutOutSize: scanArea,
        overlayColor: context.shadowColor.withOpacity(0.8),
      ),
    );
  }

  void _onQRViewCreated(controller) {
    setState(() {
      this.controller = controller;
      _resumeCamera();
    });
    controller.scannedDataStream.listen((scanData) {
      final code = scanData as Barcode;
      context.read<ScannerCubit>().scanTicket(code.code);
    });
  }

  void _resumeCamera() {
    if (Platform.isAndroid) {
      controller.pauseCamera();
    }

    controller.resumeCamera();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
