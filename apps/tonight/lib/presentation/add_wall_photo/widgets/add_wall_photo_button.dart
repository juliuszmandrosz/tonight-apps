import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/add_wall_photo/add_wall_photo_cubit.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class AddWallPhotoButton extends StatelessWidget {
  const AddWallPhotoButton({Key? key}) : super(key: key);

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
          // TODO - add translations
          context.showSnackbarMessage('Zdjęcie opublikowano pomyślnie');
          await context.router.replaceAll([const WelcomeLoaderRoute()]);
        }
      },
      child: FloatingActionButton.extended(
        onPressed: () => context.read<AddWallPhotoCubit>().addPhoto(),
        icon: const FaIcon(FontAwesomeIcons.solidPaperPlane),
        // TODO - add translation
        label: const Text('Opublikuj'),
      ),
    );
  }
}
