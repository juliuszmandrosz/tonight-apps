import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/common.dart';
import 'package:tonight_scanner/application/scanner/scanner_cubit.dart';
import 'package:translations/translations.dart';

class ScanAnotherTicketButton extends StatelessWidget {
  const ScanAnotherTicketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScannerCubit, ScannerState>(
      builder: (context, state) {
        return state.status.isInitial() || state.status.isLoading()
            ? const SizedBox()
            : SizedBox(
                width: 300,
                child: FloatingActionButton.extended(
                  heroTag: UniqueKey(),
                  onPressed: () => context.read<ScannerCubit>().resetStatus(),
                  icon: const FaIcon(FontAwesomeIcons.qrcode),
                  label: Text(S().scanAnotherTicket),
                ),
              );
      },
    );
  }
}
