import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/application/clubs/club_filters/club_filters_cubit.dart';
import 'package:raver/application/core/places/places_cubit.dart';
import 'package:raver/domain/places/city_entity.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';
import 'package:rxdart/rxdart.dart';

class ClubFiltersCity extends StatefulWidget {
  const ClubFiltersCity({Key? key}) : super(key: key);

  @override
  State<ClubFiltersCity> createState() => _ClubFiltersCityState();
}

class _ClubFiltersCityState extends State<ClubFiltersCity> {
  final _onSearchChanged = BehaviorSubject<String>();
  final _textController = TextEditingController();

  @override
  void initState() {
    _subscribeToSearchChange();
    _textController.text =
        context.read<ClubFiltersCubit>().state.filters.cityFilter.cityName;
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
    return BlocBuilder<ClubFiltersCubit, ClubFiltersState>(
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
                      children: [
                        RaverHeadline(
                          text: S().city,
                          isSmallerVersion: true,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText:
                            MaterialLocalizations.of(context).searchFieldLabel,
                        suffixIcon: state.filters.cityFilter.cityName.isNotEmpty
                            ? InkWell(
                                onTap: _resetCity,
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
                    BlocBuilder<PlacesCubit, PlacesState>(
                      builder: (context, state) {
                        return state.status.isLoading()
                            ? Center(
                                child: SpinKitThreeBounce(
                                  color: context.onSurfaceColor,
                                  size: 24,
                                ),
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.cities.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: const CircleAvatar(
                                      child: Icon(Icons.pin_drop),
                                    ),
                                    title: Text(state.cities[index].name),
                                    onTap: () => _onCityTapped(
                                      state.cities[index],
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
      final placesCubit = context.read<PlacesCubit>();

      if (value == placesCubit.state.previousSearch) {
        return;
      }

      if (value.isNotEmpty && mounted) {
        placesCubit.searchForCities(value);
        return;
      }

      if (placesCubit.state.cities.isNotEmpty && mounted) {
        placesCubit.clearCities();
      }
    });
  }

  _onCityTapped(City city) {
    context.read<ClubFiltersCubit>().changeCity(city.id, city.name);

    setState(() {
      _textController.text = city.name;
    });

    FocusManager.instance.primaryFocus?.unfocus();

    _onSearchChanged.add('');
  }

  _resetCity() {
    context.read<ClubFiltersCubit>().changeCity('', '');
    setState(() {
      _textController.text = '';
    });
  }
}
