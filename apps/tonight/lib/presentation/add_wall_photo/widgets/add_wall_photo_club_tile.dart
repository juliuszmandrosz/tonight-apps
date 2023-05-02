import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/application/add_wall_photo/wall_photo_venue_model.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class AddWallPhotoClubTile extends StatelessWidget {
  const AddWallPhotoClubTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddWallPhotoCubit, AddWallPhotoState>(
      listenWhen: (previous, current) =>
          previous.selectedVenue != current.selectedVenue,
      listener: (context, state) {
        state.selectedVenue.fold(
          () => null,
          (club) =>
              context.read<AddWallPhotoCubit>().fetchLiveEventsFromClub(club),
        );
      },
      builder: (context, state) {
        return BlocBuilder<AddWallPhotoCubit, AddWallPhotoState>(
          builder: (context, state) {
            return DenseListTile(
              enabled: _enabled(state),
              onTap: () => _onTap(context: context, state: state),
              leading: FaIcon(
                FontAwesomeIcons.locationDot,
                color: context.secondaryColor,
                size: 20,
              ),
              title: Text(
                state.selectedVenue.fold(
                  () => S().clubName,
                  (venue) => venue.venueName,
                ),
                style: context.titleSmall.copyWith(
                  color: context.secondaryColor,
                ),
              ),
              trailing: state.initialEvent.isSome()
                  ? const SizedBox.shrink()
                  : state.fetchNearestClubStatus.isLoading()
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircleLoadingIndicator(size: 20),
                        )
                      : FaIcon(
                          FontAwesomeIcons.chevronRight,
                          size: 16,
                          color: context.secondaryColor,
                        ),
            );
          },
        );
      },
    );
  }

  bool _enabled(AddWallPhotoState state) =>
      state.initialEvent.isNone() && !state.fetchNearestClubStatus.isLoading();

  _onTap({
    required BuildContext context,
    required AddWallPhotoState state,
  }) async {
    if (!_enabled(state)) return;

    if (state.userLocation.isSome() && state.nearestVenues.isEmpty) {
      context.showSnackbarMessage(S().noClubsNearby);
      return;
    }

    if (state.userLocation.isNone()) {
      final venue =
          await context.pushRoute<WallPhotoVenue>(const SelectClubRoute());
      if (venue == null) return;
      if (context.mounted) {
        context.read<AddWallPhotoCubit>().selectVenue(venue);
      }
      return;
    }

    await showModalBottomSheet(
      context: context,
      builder: (_) {
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: state.nearestVenues.length,
            itemBuilder: (_, i) {
              final venue = state.nearestVenues[i];
              return Padding(
                padding: EdgeInsets.only(top: i == 0 ? 8.0 : 0),
                child: ListTile(
                  leading: ProfilePictureContainer(
                    profilePictureUrl: venue.venuePhotoUrl,
                    imageSize: 40,
                    backgroundColor: context.surfaceColor,
                    textColor: context.onSurfaceColor,
                    textStyle: context.titleSmall,
                    username: venue.venueName,
                  ),
                  title: Text(
                    venue.venueName,
                    style: context.titleSmall,
                  ),
                  onTap: () {
                    context.read<AddWallPhotoCubit>().selectVenue(venue);
                    context.popRoute();
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
