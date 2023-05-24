import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/application/scan_qr/scan_qr_cubit.dart';

class ScanAnotherRewardButton extends StatelessWidget {
  const ScanAnotherRewardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScanQrCubit, ScanQrState>(
      builder: (context, state) {
        return state.status.isInitial() || state.status.isLoading()
            ? const SizedBox()
            : SizedBox(
                width: 300,
                child: FloatingActionButton.extended(
                  heroTag: UniqueKey(),
                  onPressed: () => context.read<ScanQrCubit>().resetStatus(),
                  icon: const FaIcon(FontAwesomeIcons.qrcode),
                  // TODO - add translation
                  label: Text('Zeskanuj kolejną nagrodę'),
                ),
              );
      },
    );
  }
}
