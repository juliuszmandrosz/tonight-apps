import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:translations/translations.dart';

class RefreshWallPhotosButton extends StatelessWidget {
  const RefreshWallPhotosButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallPhotosBloc, WallPhotosState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.userLocation.isSome()
                    ? S().wallPhotosNearbyInfo
                    : S().wallPhotosInfo,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => context
                    .read<WallPhotosBloc>()
                    .add(const WallPhotosEvent.wallPhotosRefreshed()),
                child: Text(S().refresh),
              ),
            ],
          ),
        );
      },
    );
  }
}
