import 'package:auto_route/auto_route.dart';
import 'package:clubs/infrastructure/filters/filter/city_filter.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tonight/application/clubs/club_list/clubs_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ClubCityPickerField extends HookWidget {
  const ClubCityPickerField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cityPickerController = useTextEditingController();
    return BlocConsumer<ClubsBloc, ClubsState>(
      listenWhen: (previous, current) =>
          previous.clubFilters.cityFilter != current.clubFilters.cityFilter,
      listener: (context, state) {
        cityPickerController.text = state.clubFilters.cityFilter.cityName;
      },
      buildWhen: (previous, current) =>
          previous.clubFilters.cityFilter != current.clubFilters.cityFilter,
      builder: (context, state) {
        return TextField(
          controller: cityPickerController,
          onTap: () => context.pushRoute(
            ClubCityPickerRoute(
              blocContext: context,
              selectedCity: state.clubFilters.cityFilter,
            ),
          ),
          textAlignVertical: TextAlignVertical.center,
          readOnly: true,
          decoration: InputDecoration(
            hintMaxLines: 1,
            hintText: S().where,
            hintStyle: context.titleSmall.copyWith(color: context.hintColor),
            prefixIcon: const Icon(Icons.location_pin),
            suffixIcon: state.clubFilters.cityFilter.cityName.isNotEmpty
                ? IconButton(
                    onPressed: () => context.read<ClubsBloc>().add(
                          ClubsEvent.cityFilterApplied(
                            CityFilter.empty(),
                          ),
                        ),
                    icon: const Icon(Icons.clear),
                  )
                : null,
          ),
        );
      },
    );
  }
}
