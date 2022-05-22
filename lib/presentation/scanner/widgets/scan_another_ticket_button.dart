import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_scanner/application/scanner/scanner_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class ScanAnotherTicketButton extends StatelessWidget {
  const ScanAnotherTicketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
        onPressed: () => context.read<ScannerCubit>().resetStatus(),
        child: Text(S().scanAnotherTicket),
      ),
    );
  }
}
