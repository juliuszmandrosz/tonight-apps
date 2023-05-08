import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/update_profile_picture/update_profile_picture_cubit.dart';
import 'package:translations/translations.dart';

class UpdateProfilePictureBottomSheet extends StatelessWidget {
  final BuildContext blocContext;
  final String currentProfilePictureUrl;

  const UpdateProfilePictureBottomSheet({
    required this.blocContext,
    required this.currentProfilePictureUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: blocContext.read<UpdateProfilePictureCubit>(),
      child: BlocBuilder<UpdateProfilePictureCubit, UpdateProfilePictureState>(
        builder: (ctx, state) {
          return SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    onPressed: () async {
                      context.popRoute();
                      await blocContext
                          .read<UpdateProfilePictureCubit>()
                          .pickProfilePicture();
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.pen),
                        const SizedBox(height: 8),
                        Text(
                          S().edit,
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    onPressed: () async {
                      final result =
                          await context.showConfirmationDialogWithCustomMessage(
                        S().confirmDeletePhoto,
                      );

                      if (result == true && context.mounted) {
                        context.popRoute();
                        await blocContext
                            .read<UpdateProfilePictureCubit>()
                            .deleteProfilePicture(currentProfilePictureUrl);
                      }
                    },
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.trashCan),
                        const SizedBox(height: 8),
                        Text(
                          S().delete,
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
