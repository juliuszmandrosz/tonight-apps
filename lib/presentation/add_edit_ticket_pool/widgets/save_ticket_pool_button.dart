import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/add_edit_ticket_pool_cubit.dart';

class SaveTicketPoolButton extends StatelessWidget {
  const SaveTicketPoolButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddEditTicketPoolCubit, AddEditTicketPoolState>(
      buildWhen: (previous, current) =>
          previous.editingTicketPool != current.editingTicketPool,
      builder: (context, state) {
        return FloatingActionButton(
          onPressed: () => state.editingTicketPool.fold(
            () => context.read<AddEditTicketPoolCubit>().addTicketPool(),
            (_) => context.read<AddEditTicketPoolCubit>().editTicketPool(),
          ),
          child: state.editingTicketPool.fold(
            () => const FaIcon(Icons.add),
            (_) => const FaIcon(Icons.save),
          ),
        );
      },
    );
  }
}
