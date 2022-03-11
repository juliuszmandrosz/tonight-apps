import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';

class TicketQrPage extends StatelessWidget {
  final String ticketId;

  const TicketQrPage({required this.ticketId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverAppBar(
        title: S().tickets(1),
      ),
      body: Center(
        child: QrImage(
          data: ticketId,
          version: QrVersions.auto,
          size: 300,
        ),
      ),
    );
  }
}
