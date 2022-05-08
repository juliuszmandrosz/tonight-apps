import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_scanner/injection.dart';
import 'package:raver_scanner/presentation/core/raver_scanner_app_bar.dart';
import 'package:raver_scanner/presentation/scanner/widgets/qr_scanner.dart';
import 'package:raver_scanner/presentation/scanner/widgets/scan_result.dart';
import 'package:raver_translations/raver_translations.dart';

class ScannerPage extends StatelessWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RaverScannerAppBar(title: S().scanTicket),
      body: BlocProvider(
        create: (context) => getIt<ScannerCubit>(
          param1: context.read<CurrentEventCubit>(),
        ),
        child: BlocBuilder<ScannerCubit, ScannerState>(
          builder: (context, state) {
            switch (state.status) {
              case CubitStatus.initial:
                return const QrScanner();

              case CubitStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );

              case CubitStatus.failure:
                return ScanResult(
                  color: Colors.red,
                  icon: Icons.remove,
                  message: state.errorMessage.getOrCrash(),
                );

              case CubitStatus.success:
                final ticket = state.lastScannedTicket.getOrCrash();
                return ScanResult(
                  color: ticket.isVip ? Colors.blue : Colors.green,
                  icon: ticket.isVip
                      ? FontAwesomeIcons.star
                      : FontAwesomeIcons.check,
                  message: ticket.isVip ? S().vipValidTicket : S().validTicket,
                );
            }
          },
        ),
      ),
    );
  }
}
