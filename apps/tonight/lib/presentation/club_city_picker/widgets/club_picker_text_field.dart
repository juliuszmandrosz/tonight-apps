import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/clubs/club_city_picker/club_city_picker_bloc.dart';
import 'package:translations/translations.dart';

class ClubPickerTextField extends HookWidget {
  const ClubPickerTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    final phrase = useListenable(textController).value.text;
    return BlocBuilder<ClubCityPickerBloc, ClubCityPickerState>(
      builder: (context, state) {
        return TextField(
          controller: textController,
          decoration: InputDecoration(
            labelText: S().startSearching,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: phrase.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      textController.clear();
                      context.unfocus();
                      context
                          .read<ClubCityPickerBloc>()
                          .add(const ClubCityPickerEvent.cityFilterResetted());
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 18,
                    ),
                  )
                : null,
          ),
          onChanged: (value) => context
              .read<ClubCityPickerBloc>()
              .add(ClubCityPickerEvent.searchChanged(value)),
        );
      },
    );
  }
}
