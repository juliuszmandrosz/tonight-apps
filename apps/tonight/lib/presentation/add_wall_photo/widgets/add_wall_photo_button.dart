import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class AddWallPhotoButton extends StatelessWidget {
  final Option<Event> event;

  const AddWallPhotoButton({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddWallPhotoCubit, AddWallPhotoState>(
      listener: (context, state) async {
        state.snackbarMessage.fold(
          () {},
          (msg) => context.showSnackbarMessage(msg),
        );

        state.addPhotoStatus.isLoading()
            ? context.loaderOverlay.show()
            : context.loaderOverlay.hide();

        if (state.addPhotoStatus.isSuccess()) {
          // TODO - notify event room about new photo
          context.showSnackbarMessage(S().photoAddedSuccessfully);
          event.fold(
              () async => await context.router.replaceAll(
                    [const WelcomeLoaderRoute()],
                  ),
              (_) async => context.router.popUntil(
                  (route) => route.settings.name == EventRoomRoute.name));
        }
      },
      child: FloatingActionButton.extended(
        onPressed: () => context.read<AddWallPhotoCubit>().addPhoto(),
        icon: const FaIcon(FontAwesomeIcons.solidPaperPlane),
        label: Text(S().publish),
      ),
    );
  }
}
