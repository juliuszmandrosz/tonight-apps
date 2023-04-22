import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:translations/translations.dart';

class RefreshWallPhotosButton extends StatelessWidget {
  const RefreshWallPhotosButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // TODO - add translation
          "Brak dzisiejszych zdjęć w Twoich ulubionych klubach, bądź pierwszy i dodaj je!",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () => context.read<WallPhotosBloc>().add(
                const WallPhotosEvent.wallPhotosFetched(),
              ),
          child: Text(S().refresh),
        ),
      ],
    );
  }
}
