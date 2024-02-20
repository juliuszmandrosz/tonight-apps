import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/artists/artists_cubit.dart';
import 'package:translations/translations.dart';

class ArtistCityPickerField extends HookWidget {
  const ArtistCityPickerField({super.key});

  @override
  Widget build(BuildContext context) {
    final cityPickerController = useTextEditingController();
    return BlocConsumer<ArtistsCubit, ArtistsState>(
      listenWhen: (previous, current) =>
          previous.filters.cityFilter != current.filters.cityFilter,
      listener: (context, state) {
        cityPickerController.text = state.filters.cityFilter.cityName;
      },
      buildWhen: (previous, current) =>
          previous.filters.cityFilter != current.filters.cityFilter,
      builder: (context, state) {
        return TextField(
          controller: cityPickerController,
          // TODO - add translation
          onTap: () {
            context.unfocus();
            context.showSnackbarMessage(
              'Just type city in search bar above for now.',
            );
          },
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          decoration: InputDecoration(
            hintMaxLines: 1,
            hintText: S().where,
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            prefixIcon: const Icon(Icons.location_pin),
            suffixIcon: state.filters.cityFilter.cityName.isNotEmpty
                ? IconButton(
                    onPressed: () => context
                        .read<ArtistsCubit>()
                        .applyCityFilter(CityFilter.empty()),
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
        );
      },
    );
  }
}
