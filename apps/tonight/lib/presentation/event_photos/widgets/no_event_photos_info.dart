import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:translations/translations.dart';

class NoEventPhotosInfo extends StatelessWidget {
  const NoEventPhotosInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S().eventPhotosInfo,
            style: context.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => context
                .read<EventPhotosBloc>()
                .add(const EventPhotosEvent.photosRefreshed()),
            child: Text(S().refresh),
          ),
        ],
      ),
    );
  }
}
