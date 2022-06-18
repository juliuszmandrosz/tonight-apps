import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

class AddPhotoButton extends StatelessWidget {
  const AddPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final result = await FilePicker.platform.pickFiles(
          allowMultiple: false,
          type: FileType.custom,
          dialogTitle: S().selectEventPhoto,
          allowedExtensions: ['jpg', 'png'],
        );

        if (result != null) {
          final photo = File(result.files.first.path!);

          context.read<AddEventCubit>().eventPhotoChanged(photo);
        }
      },
      child: BlocBuilder<AddEventCubit, AddEventState>(
        buildWhen: (previous, current) =>
            previous.eventPhoto != current.eventPhoto,
        builder: (context, state) {
          return Text(
            state.eventPhoto.value == null ? S().addPhoto : S().editPhoto,
          );
        },
      ),
    );
  }
}
