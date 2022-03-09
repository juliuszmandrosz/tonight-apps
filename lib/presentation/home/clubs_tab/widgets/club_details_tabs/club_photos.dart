import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver/application/clubs/club_details/club_photos/club_photos_cubit.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/photos/club_photo.dart';

class ClubPhotos extends StatelessWidget {
  const ClubPhotos({
    Key? key,
    required this.clubId,
  }) : super(key: key);

  final String clubId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: BlocBuilder<ClubPhotosCubit, ClubPhotosState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) {
              if (state.photosUrls.isEmpty) {
                return const Center(child: Text("Nothing to show here"));
              }
              return GridView.builder(
                itemCount: 2,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  return ClubPhoto(
                    url: state.photosUrls[index],
                  );
                },
              );
            },
            loadFailure: (state) => const Center(
              child: Text("Failed to fetch photos"),
            ),
          );
        },
      ),
    );
  }
}
