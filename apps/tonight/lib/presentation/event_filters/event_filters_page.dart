import 'package:common/common.dart';
import 'package:events/domain/filters/event_filters_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/events/event_filters/event_filters_page_type.dart';
import 'package:tonight/application/events/event_list/events_bloc.dart';
import 'package:tonight/application/tonight_events/bloc/tonight_events_bloc.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/tonight_app_bar.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_dress_code.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_is_concert.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_min_age.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_music.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_price.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_submit_button.dart.dart';
import 'package:tonight/presentation/event_filters/widgets/event_filters_whole_world.dart';
import 'package:translations/translations.dart';

class EventFiltersPage extends StatelessWidget {
  final BuildContext blocContext;
  final EventFilters selectedFilters;
  final EventFiltersPageType eventFiltersPageType;

  const EventFiltersPage({
    required this.blocContext,
    required this.selectedFilters,
    required this.eventFiltersPageType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<EventFiltersCubit>()
            ..initFilters(
              filters: selectedFilters,
              pageType: eventFiltersPageType,
            ),
        ),
        if (eventFiltersPageType == EventFiltersPageType.tonight)
          BlocProvider.value(
            value: blocContext.read<TonightEventsBloc>(),
          ),
        if (eventFiltersPageType == EventFiltersPageType.discover)
          BlocProvider.value(
            value: blocContext.read<EventsBloc>(),
          ),
        BlocProvider.value(
          value: blocContext.read<AvailableFiltersCubit>(),
        ),
      ],
      child: BlocListener<EventFiltersCubit, EventFiltersState>(
        listenWhen: (previous, current) =>
            previous.snackbarMessage != current.snackbarMessage,
        listener: (context, state) {
          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );
        },
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            floatingActionButton: EventFiltersSubmitButton(
              eventFiltersPageType: eventFiltersPageType,
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            appBar: TonightAppBar(title: S().filters),
            body: BlocBuilder<AvailableFiltersCubit, AvailableFiltersState>(
              builder: (context, state) => state.map(
                initial: (_) => const SizedBox.shrink(),
                loadInProgress: (_) => const WaveLoadingIndicator(),
                loadFailure: (_) => FailureInfo(
                  retryCallback:
                      context.read<AvailableFiltersCubit>().getAvailableFilters,
                ),
                loadSuccess: (state) {
                  return SafeArea(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            EventFiltersMinAge(
                              availableMinAges: state.availableFilters.minAges,
                            ),
                            const SizedBox(height: 25),
                            EventFiltersMusic(
                              availableMusicalGenres:
                                  state.availableFilters.musicalGenres,
                            ),
                            const SizedBox(height: 25),
                            EventFiltersDressCode(
                              availableOutfits:
                                  state.availableFilters.allowedOutfits,
                            ),
                            const SizedBox(height: 25),
                            const EventFiltersPrice(),
                            const SizedBox(height: 25),
                            const EventFiltersIsConcert(),
                            if (eventFiltersPageType ==
                                EventFiltersPageType.tonight)
                              const Padding(
                                padding: EdgeInsets.only(top: 25),
                                child: EventFiltersShowWholeWorld(),
                              ),
                            const SizedBox(height: 80),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
