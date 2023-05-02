import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:translations/raver_translations.dart';

class AddWallPhotoEventTile extends StatelessWidget {
  const AddWallPhotoEventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddWallPhotoCubit, AddWallPhotoState>(
      builder: (context, state) {
        return DenseListTile(
          enabled: _enabled(state),
          onTap: () async => await _onTap(state: state, context: context),
          leading: FaIcon(
            FontAwesomeIcons.fire,
            color: context.secondaryColor,
            size: 20,
          ),
          title: Text(
            state.selectedEvent.fold(
              () => S().eventName,
              (event) => event.eventName,
            ),
            style: context.titleSmall.copyWith(color: context.secondaryColor),
          ),
          trailing: state.initialEvent.isSome()
              ? const SizedBox.shrink()
              : state.fetchLiveEventsStatus.isLoading()
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
  }

  bool _enabled(AddWallPhotoState state) =>
      state.initialEvent.isNone() && !state.fetchLiveEventsStatus.isLoading();

  Future<void> _onTap({
    required AddWallPhotoState state,
    required BuildContext context,
  }) async {
    if (!_enabled(state)) return;
    if (state.selectedVenue.isNone()) {
      context.showSnackbarMessage(S().firstSelectClub);
      return;
    }
    if (state.liveEventsFromSelectedClub.isEmpty) {
      context.showSnackbarMessage(S().noEventsInSelectedClub);
      return;
    }
    await showModalBottomSheet(
      context: context,
      builder: (_) {
        return SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: state.liveEventsFromSelectedClub.length,
            itemBuilder: (_, i) {
              final event = state.liveEventsFromSelectedClub[i];
              return Padding(
                padding: EdgeInsets.only(top: i == 0 ? 8.0 : 0),
                child: ListTile(
                  leading: CircleNetworkPhoto(
                    photoUrl: event.eventPhotoUrl,
                    containerSize: 40,
                    loaderSize: 16,
                  ),
                  title: Text(
                    event.eventName,
                    style: context.titleSmall,
                  ),
                  onTap: () {
                    context.read<AddWallPhotoCubit>().selectEvent(event);
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
