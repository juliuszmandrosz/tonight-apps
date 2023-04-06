import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight_partners/application/invite_selector/invite_selector_cubit.dart';
import 'package:translations/translations.dart';

class GenerateAccessCodeButton extends StatelessWidget {
  const GenerateAccessCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InviteSelectorCubit, InviteSelectorState>(
      builder: (context, state) {
        return state.status.isLoading()
            ? const TicketLogoAnimation()
            : ElevatedButton(
                onPressed: () => context
                    .read<InviteSelectorCubit>()
                    .createInvitationCodeForSelector(),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: AutoSizeText(
                    S().generateAccessCode,
                    maxLines: 1,
                  ),
                ),
              );
      },
    );
  }
}
