import 'package:account_settings/account_settings.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_profile/user_profile_entity.dart';
import 'package:tonight/domain/user_profile/user_profile_failure.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

class UserProfileAggregator {
  final UserAccountFacade _userAccountFacade;
  final WallPhotoFacade _wallPhotoFacade;

  UserProfileAggregator(this._userAccountFacade, this._wallPhotoFacade);

  Stream<Either<UserProfileFailure, UserProfile>> getUserProfile(
    WallPhoto? lastPhoto, {
    int photosPageSize = 20,
  }) async* {
    final userPhotos = await _wallPhotoFacade.getUserPhotos(
      lastPhoto: lastPhoto,
      pageSize: photosPageSize,
    );

    if (userPhotos.isLeft()) {
      yield left(const UserProfileFailure.unexpected());
    }

    yield* _userAccountFacade.getUserAccount().map(
          (result) => result.fold(
            (failure) => left(const UserProfileFailure.unexpected()),
            (account) => right(
              UserProfile(
                id: account.id,
                email: account.email,
                raverCoins: account.raverCoins,
                username: account.username,
                favoriteClubsCount: account.favoriteClubIds.length,
                profilePictureUrl: account.profilePictureUrl,
                userPhotos: userPhotos.getRightOrCrash(),
              ),
            ),
          ),
        );
  }
}
