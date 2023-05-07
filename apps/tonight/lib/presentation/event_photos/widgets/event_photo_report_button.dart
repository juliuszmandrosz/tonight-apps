import 'package:common/common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/event_photos/event_photos_bloc.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:translations/translations.dart';

class EventPhotoReportButton extends StatelessWidget {
  final WallPhoto photo;

  const EventPhotoReportButton({
    required this.photo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventPhotosBloc, EventPhotosState>(
      buildWhen: (p, c) =>
          !listEquals(p.reportingPhotoIds, c.reportingPhotoIds),
      builder: (context, state) {
        return SizedBox(
          height: 40,
          width: 40,
          child: state.reportingPhotoIds.contains(photo.id)
              ? const CircleLoadingIndicator(size: 20)
              : IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () async {
                    final result =
                        await context.showConfirmationDialogWithCustomMessage(
                      S().confirmPhotoReport,
                    );

                    if (result == true && context.mounted) {
                      context
                          .read<EventPhotosBloc>()
                          .add(EventPhotosEvent.photoReported(photo));
                    }
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.exclamation,
                    size: 20,
                  ),
                ),
        );
      },
    );
  }
}
