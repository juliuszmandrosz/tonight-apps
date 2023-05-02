import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:translations/raver_translations.dart';

class EnterAccessCodeDialog extends StatelessWidget {
  const EnterAccessCodeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectorClubCubit = context.read<SelectorClubCubit>();
    return BlocConsumer<SelectorClubCubit, SelectorClubState>(
      listener: (context, state) {
        if (state.enterAccessCodeStatus.isSubmissionInProgress) {
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return AlertDialog(
          insetPadding: EdgeInsets.zero,
          title: Text(S().enterAccessCode),
          contentPadding: const EdgeInsets.only(top: 20),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(S().cancel.toUpperCase()),
            ),
            TextButton(
              onPressed: () => selectorClubCubit.enterAccessCode(),
              child: Text(S().confirm.toUpperCase()),
            ),
          ],
          content: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(20),
            child: TextField(
              onChanged: (email) => selectorClubCubit.accessCodeChanged(email),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: S().accessCode),
            ),
          ),
        );
      },
    );
  }
}
