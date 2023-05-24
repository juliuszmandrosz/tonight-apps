import 'dart:io';

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:tonight_partners/application/scan_qr/scan_qr_cubit.dart';

class RewardsQrScanner extends StatefulWidget {
  const RewardsQrScanner({Key? key}) : super(key: key);

  @override
  State<RewardsQrScanner> createState() => _RewardsQrScannerState();
}

class _RewardsQrScannerState extends State<RewardsQrScanner> {
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
      formatsAllowed: const [BarcodeFormat.qrcode],
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
      context.read<ScanQrCubit>().scanTimeTaskReward(code.code);
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
