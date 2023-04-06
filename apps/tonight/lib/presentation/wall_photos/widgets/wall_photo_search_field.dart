import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/events/event_filters/event_filters_cubit.dart';
import 'package:tonight/application/wall_photos/wall_photos_cubit.dart';
import 'package:translations/translations.dart';

class WallPhotoSearchField extends StatelessWidget {
  const WallPhotoSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallPhotosCubit, WallPhotosState>(
      builder: (context, state) {
        return Column(
          children: [
            TextField(
              controller: TextEditingController(
                text: state.filterPhrase,
              ),
              onSubmitted: (value) =>
                  context.read<WallPhotosCubit>().submitSearchField(value),
              decoration: InputDecoration(
                hintMaxLines: 1,
                hintText: S().startSearching,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: state.filterPhrase.isEmpty
                    ? null
                    : InkWell(
                        onTap: () => context
                            .read<EventFiltersCubit>()
                            .submitSearchField(''),
                        child: const Icon(Icons.clear),
                      ),
              ),
            ),
          ],
        );
      },
    );
  }
}
