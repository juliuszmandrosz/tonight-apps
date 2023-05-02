import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/raver_translations.dart';
import 'package:uuid/uuid.dart';

class AddPhotoButton extends StatelessWidget {
  const AddPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final result = await FilePicker.platform.pickFiles(
          allowMultiple: false,
          type: FileType.image,
          dialogTitle: S().selectEventPhoto,
        );

        if (context.mounted && result != null) {
          final addEventCubit = context.read<AddEventCubit>();
          final file = File(result.files.first.path!);
          final tempDir = await getTemporaryDirectory();
          final thumbnail = await FlutterImageCompress.compressAndGetFile(
            file.absolute.path,
            '${tempDir.path}/${const Uuid().v1()}.png',
            minWidth: 512,
            minHeight: 512,
            format: CompressFormat.png,
          );

          addEventCubit.eventPhotoChanged(thumbnail!);
        }
      },
      child: BlocBuilder<AddEventCubit, AddEventState>(
        buildWhen: (previous, current) =>
            previous.eventPhoto != current.eventPhoto,
        builder: (context, state) {
          return Text(
            state.eventPhoto.value == null ? S().addPhoto : S().changePhoto,
          );
        },
      ),
    );
  }
}
