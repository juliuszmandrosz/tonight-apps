import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/activate_ticket/activate_ticket_cubit.dart';
import 'package:translations/translations.dart';

class ActivateTicketButton extends StatelessWidget {
  const ActivateTicketButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivateTicketCubit, ActivateTicketState>(
      builder: (context, state) {
        return state.activateTicketStatus.isLoading()
            ? const CircleLoadingIndicator()
            : SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: state.ticket.isNone()
                      ? null
                      : () async {
                          final result = await context
                              .showConfirmationDialogWithCustomMessage(
                            // TODO - add translation
                            'Czy na pewno chcesz aktywować bilet? Będzie wazny przez 10 minut.',
                          );

                          if (result == true && context.mounted) {
                            context
                                .read<ActivateTicketCubit>()
                                .activateTicket();
                          }
                        },
                  icon: const Icon(Icons.check),
                  label: Text(S().activate),
                ),
              );
      },
    );
  }
}
