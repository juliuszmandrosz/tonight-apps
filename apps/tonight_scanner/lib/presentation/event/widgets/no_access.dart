import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_scanner/application/current_event/current_event_cubit.dart';
import 'package:tonight_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:tonight_scanner/presentation/core/tonight_scanner_headline.dart';
import 'package:tonight_scanner/presentation/event/widgets/enter_access_code_dialog.dart';
import 'package:translations/translations.dart';

class NoAccess extends StatelessWidget {
  const NoAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TonightScannerHeadline(text: S().noAccessToClub),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            context.read<SelectorClubCubit>().resetEnterAccessCodeState();
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (ctx) => MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: context.read<SelectorClubCubit>(),
                  ),
                  BlocProvider.value(
                    value: context.read<CurrentEventCubit>(),
                  ),
                ],
                child: const EnterAccessCodeDialog(),
              ),
            );
          },
          child: Text(S().enterAccessCode),
        ),
      ],
    );
  }
}
