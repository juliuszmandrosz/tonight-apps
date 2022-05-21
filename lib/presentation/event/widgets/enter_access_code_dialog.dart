import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_scanner/application/core/access_code_input.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class EnterAccessCodeDialog extends StatelessWidget {
  const EnterAccessCodeDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectorClubCubit = context.read<SelectorClubCubit>();
    return BlocConsumer<SelectorClubCubit, SelectorClubState>(
      buildWhen: (previous, current) =>
          previous.accessCode != current.accessCode ||
          previous.enterAccessCodeStatus != current.enterAccessCodeStatus ||
          previous.errorMessage != current.errorMessage,
      listenWhen: (previous, current) =>
          previous.enterAccessCodeStatus != current.enterAccessCodeStatus,
      listener: (context, state) {
        if (state.enterAccessCodeStatus.isSubmissionSuccess) {
          context.read<CurrentEventCubit>().getCurrentEvent();
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
            state.enterAccessCodeStatus.isSubmissionInProgress
                ? const CircularProgressIndicator()
                : TextButton(
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
              decoration: InputDecoration(
                labelText: S().accessCode,
                errorText: _getAccessCodeInputErrorMessage(state),
              ),
            ),
          ),
        );
      },
    );
  }

  String? _getAccessCodeInputErrorMessage(SelectorClubState state) {
    if (state.errorMessage.isSome()) {
      return state.errorMessage.getOrCrash();
    }

    if (state.accessCode.valid ||
        state.enterAccessCodeStatus != FormzStatus.invalid) {
      return null;
    }

    return accessCodeInputErrorMessages[state.accessCode.error];
  }
}
