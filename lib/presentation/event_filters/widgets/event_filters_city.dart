import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_place/google_place.dart';
import 'package:raver/application/core/google_places/google_places_cubit.dart';
import 'package:raver/application/events/event_filters/event_filters_cubit.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:rxdart/rxdart.dart';

class EventFiltersCity extends StatefulWidget {
  const EventFiltersCity({Key? key}) : super(key: key);

  @override
  State<EventFiltersCity> createState() => _EventFiltersCityState();
}

class _EventFiltersCityState extends State<EventFiltersCity> {
  final _onSearchChanged = BehaviorSubject<String>();
  final _textController = TextEditingController();

  @override
  void initState() {
    _subscribeToSearchChange();
    _textController.text = BlocProvider.of<EventFiltersCubit>(context)
        .state
        .filters
        .cityFilter
        .cityName;
    super.initState();
  }

  @override
  void dispose() {
    _onSearchChanged.close();
    _textController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<EventFiltersCubit, EventFiltersState>(
      buildWhen: (previous, current) =>
          previous.filters.cityFilter.cityName !=
              current.filters.cityFilter.cityName ||
          previous.filters.cityFilter.cityId !=
              current.filters.cityFilter.cityId ||
          previous.filters.maxDistanceFilter.enabled !=
              current.filters.maxDistanceFilter.enabled,
      builder: (context, state) {
        return state.filters.maxDistanceFilter.enabled
            ? Container()
            : SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [RaverHeadline(text: S().city)],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText:
                  MaterialLocalizations.of(context).searchFieldLabel,
                  focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: theme.primaryColor,
                            width: 2,
                          ),
                        ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: DefaultColors.textColorLight,
                      width: 2,
                    ),
                  ),
                  suffixIcon: state.filters.cityFilter.cityName.isNotEmpty
                      ? InkWell(
                    onTap: () {
                      context
                          .read<EventFiltersCubit>()
                          .changeCity('', '');
                      setState(() {
                        _textController.text = '';
                      });
                    },
                    child: const Icon(
                      Icons.clear,
                      size: 18,
                    ),
                  )
                      : null,
                ),
                onChanged: (value) {
                  _onSearchChanged.add(value);
                },
              ),
              const SizedBox(height: 10),
              BlocBuilder<GooglePlacesCubit, GooglePlacesState>(
                builder: (context, state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.predictions.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                                child: Icon(
                                  Icons.pin_drop,
                                  color: theme.backgroundColor,
                                ),
                              ),
                        title:
                        Text(state.predictions[index].description!),
                        onTap: () => _onPredictionTapped(
                          state.predictions[index],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _subscribeToSearchChange() {
    _onSearchChanged
        .debounceTime(const Duration(milliseconds: 300))
        .listen((value) {
      final placesCubit = BlocProvider.of<GooglePlacesCubit>(context);

      if (value.isNotEmpty && mounted) {
        placesCubit.searchForCities(value);
        return;
      }

      if (placesCubit.state.predictions.isNotEmpty && mounted) {
        placesCubit.clearPredictions();
      }
    });
  }

  _onPredictionTapped(AutocompletePrediction prediction) {
    final cityId = prediction.placeId!;
    final cityName = prediction.structuredFormatting!.mainText!;

    context.read<EventFiltersCubit>().changeCity(cityId, cityName);

    setState(() {
      _textController.text = cityName;
    });

    FocusManager.instance.primaryFocus?.unfocus();

    _onSearchChanged.add('');
  }
}
