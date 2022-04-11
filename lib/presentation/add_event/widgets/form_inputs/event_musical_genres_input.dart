import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_partners/application/add_event/form_inputs/musical_genres.dart';
import 'package:raver_translations/raver_translations.dart';

class EventMusicalGenresInput extends StatelessWidget {
  final List<String> musicalGenres;

  const EventMusicalGenresInput({
    required this.musicalGenres,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<AddEventCubit, AddEventState>(
      buildWhen: (previous, current) =>
          !listEquals(
            previous.musicalGenres.value,
            current.musicalGenres.value,
          ) ||
          previous.status != current.status,
      builder: (context, state) {
        return TextField(
          controller: TextEditingController(
              text: _displaySelectedMusicalGenres(state.musicalGenres.value)),
          onTap: () async => await showDialog(
            context: context,
            builder: (ctx) => MultiSelectDialog<String>(
              title: Text(
                S().musicalGenres,
                style: theme.textTheme.subtitle1,
              ),
              itemsTextStyle: theme.textTheme.bodyText2,
              selectedItemsTextStyle: theme.textTheme.bodyText1,
              selectedColor: theme.primaryColor,
              initialValue: state.musicalGenres.value,
              items: musicalGenres
                  .map((genre) => MultiSelectItem(genre, genre.capitalize()))
                  .toList(),
              listType: MultiSelectListType.CHIP,
              onConfirm: (values) =>
                  context.read<AddEventCubit>().musicalGenresChanged(values),
            ),
          ),
          readOnly: true,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            labelText: S().music,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            errorText: getMusicalGenresErrorMessage(state),
          ),
        );
      },
    );
  }

  String _displaySelectedMusicalGenres(List<String> genres) {
    if (genres.isEmpty) return '';
    final sb = StringBuffer();
    for (var genre in genres) {
      sb.write(genre.capitalize());
      if (genre != genres.last) {
        sb.write(', ');
      }
    }

    return '$sb';
  }
}
