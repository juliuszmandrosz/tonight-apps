import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:common/constants/ui_constants.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/theme/dark_text_styles.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/wall_photos/wall_photos_bloc.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/utils/show_confirm_phone_number_dialog.dart';
import 'package:translations/translations.dart';

class NoWallPhotosInfo extends StatelessWidget {
  const NoWallPhotosInfo({Key? key}) : super(key: key);

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
                state.wallPhotoFilters.showPhotosFromClubsInRangeFilter
                            .userLocation
                            .isSome() &&
                        state.wallPhotoFilters.showPhotosFromClubsInRangeFilter
                            .enabled
                    ? S().wallPhotosNearbyInfo
                    : S().wallPhotosInfo,
                textAlign: TextAlign.center,
                style: context.titleMedium.copyWithSecondaryColor(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: kButtonHeight,
                child: ElevatedButton.icon(
                  onPressed: () async {
                    if (context
                        .read<AuthCubit>()
                        .checkIfPhoneNumberIsVerified()) {
                      context.pushRoute(
                        WallPhotoCameraPreviewRoute(
                          event: none(),
                          timeTask: none(),
                        ),
                      );
                      return;
                    }

                    await showConfirmPhoneNumberDialog(context);
                  },
                  label: Text(S().add),
                  icon: const FaIcon(FontAwesomeIcons.camera),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
