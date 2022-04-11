import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_common/application/available_filters/available_filters_cubit.dart';
import 'package:raver_partners/injection.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_dress_code_input.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_min_age_input.dart';
import 'package:raver_partners/presentation/add_event/widgets/form_inputs/event_musical_genres_input.dart';
import 'package:raver_translations/raver_translations.dart';

class EventDetailsStep extends StatelessWidget {
  const EventDetailsStep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AvailableFiltersCubit>()..getAvailableFilters(),
      child: BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadFailure: (_) => Center(
              child: Text(S().errorLoadingFilters),
            ),
            loadSuccess: (success) {
              final filters = success.availableFilters;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    EventMinAgeInput(minAges: filters.minAges),
                    const SizedBox(height: 20),
                    EventDressCodeInput(outfits: filters.allowedOutfits),
                    const SizedBox(height: 20),
                    EventMusicalGenresInput(
                      musicalGenres: filters.musicalGenres,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
