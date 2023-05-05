import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/profile/profile_bloc.dart';
import 'package:tonight/application/user_wall_photo_preview/user_wall_photo_preview_cubit.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/core/image_back_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_bottom_bar.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_event_name.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_rate_button.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_venue_name.dart';
import 'package:translations/translations.dart';

class UserWallPhotoPreviewPage extends StatelessWidget {
  final WallPhoto photo;
  final String heroTag;

  const UserWallPhotoPreviewPage({
    required this.photo,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TonightOverlay(
      child: BlocProvider(
        create: (context) => getIt<UserWallPhotoPreviewCubit>(),
        child:
            BlocListener<UserWallPhotoPreviewCubit, UserWallPhotoPreviewState>(
          listener: (context, state) {
            switch (state.deletePhotoStatus) {
              case CubitStatus.initial:
                context.loaderOverlay.hide();
                break;
              case CubitStatus.loading:
                context.loaderOverlay.show();
                break;
              case CubitStatus.failure:
                context.loaderOverlay.hide();
                context.showSnackbarMessage(S().serverError);
                break;
              case CubitStatus.success:
                context.loaderOverlay.hide();
                context.router.popUntil(
                  (route) => route.settings.name == WelcomeLoaderRoute.name,
                );
                context.showSnackbarMessage(S().photoDeletedSuccessfully);
                context
                    .read<ProfileBloc>()
                    .add(ProfileEvent.userWallPhotoDeleted(photo));
                break;
            }
          },
          child: SafeArea(
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endContained,
              floatingActionButton: UserWallPhotoRateButton(photo: photo),
              bottomNavigationBar: UserWallPhotoBottomBar(photo: photo),
              body: Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final photoHeight = constraints.maxWidth * 1.25;
                      return Column(
                        children: [
                          Hero(
                            tag: heroTag,
                            child: NetworkPhoto(
                              photoUrl: photo.photoUrl,
                              photoHeight: photoHeight,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                UserWallPhotoVenueName(photo: photo),
                                const SizedBox(height: 16),
                                UserWallPhotoEventName(photo: photo),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const Positioned(
                    left: 10,
                    top: 10,
                    child: ImageBackButton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
