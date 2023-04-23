import 'package:auto_route/auto_route.dart';
import 'package:clubs/domain/club/club_entity.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class AddWallPhotoClubTile extends StatelessWidget {
  const AddWallPhotoClubTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddWallPhotoCubit, AddWallPhotoState>(
      listenWhen: (previous, current) =>
          previous.selectedClub != current.selectedClub,
      listener: (context, state) {
        state.selectedClub.fold(
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
                FontAwesomeIcons.building,
                color: context.secondaryColor,
              ),
              title: Text(
                state.selectedClub.fold(
                  () => S().clubName,
                  (club) => club.clubName,
                ),
                style:
                    context.titleMedium.copyWith(color: context.secondaryColor),
              ),
              trailing: state.fetchNearestClubStatus.isLoading()
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(),
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
      !state.fetchNearestClubStatus.isLoading();

  _onTap({
    required BuildContext context,
    required AddWallPhotoState state,
  }) async {
    if (!_enabled(state)) return;

    if (state.userLocation.isSome() && state.nearestClubs.isEmpty) {
      // TODO - add translation
      context.showSnackbarMessage('Nie znaleziono klubów w pobliżu');
      return;
    }

    if (state.userLocation.isNone()) {
      final club = await context.pushRoute<Club>(const SelectClubRoute());
      if (club == null) return;
      if (context.mounted) {
        context.read<AddWallPhotoCubit>().selectClub(club);
      }
      return;
    }

    await showModalBottomSheet(
      context: context,
      builder: (_) {
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: state.nearestClubs.length,
            itemBuilder: (_, i) {
              final club = state.nearestClubs[i];
              return Padding(
                padding: EdgeInsets.only(top: i == 0 ? 8.0 : 0),
                child: ListTile(
                  leading: CircleNetworkPhoto(
                    photoUrl: club.clubImageUrl,
                    containerSize: 18,
                    loaderSize: 16,
                  ),
                  title: Text(
                    club.clubName,
                    style: context.titleSmall,
                  ),
                  onTap: () {
                    context.read<AddWallPhotoCubit>().selectClub(club);
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
