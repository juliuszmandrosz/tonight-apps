import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/artist_name.dart';
import 'package:raver_partners/presentation/config/themes/dark_theme/color_extensions.dart';
import 'package:raver_translations/raver_translations.dart';

class EventArtistNameInput extends HookWidget {
  const EventArtistNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = useTextEditingController(
      text: context.read<AddEventCubit>().state.artistName.value,
    );

    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          previous.artistName != current.artistName ||
          previous.isConcert != current.isConcert ||
          previous.status != current.status,
      builder: (context, state) {
        if (!state.isConcert) {
          _controller.text = '';
        }

        return TextField(
          enabled: state.isConcert,
          style: state.isConcert
              ? const TextStyle()
              : const TextStyle().copyWith(color: context.outlineColor),
          controller: _controller,
          onChanged: (value) =>
              context.read<AddEventCubit>().artistNameChanged(value),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: S().artistName,
            errorText: getArtistNameErrorMessage(state),
          ),
        );
      },
    );
  }
}
