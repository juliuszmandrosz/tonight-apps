import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:tonight/application/update_profile_picture/update_profile_picture_cubit.dart';
import 'package:translations/generated/l10n.dart';

class UpdateProfilePictureButton extends StatelessWidget {
  const UpdateProfilePictureButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfilePictureCubit, UpdateProfilePictureState>(
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircleLoadingIndicator()
            : SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(S().submit),
                  onPressed: () => context
                      .read<UpdateProfilePictureCubit>()
                      .updateProfilePicture(),
                ),
              );
      },
    );
  }
}
