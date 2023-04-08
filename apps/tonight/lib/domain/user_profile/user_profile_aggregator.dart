import 'package:account_settings/account_settings.dart';
import 'package:account_settings/domain/user_account_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_profile/user_profile_failure.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

class UserProfileAggregator {
  final UserAccountFacade _userAccountFacade;
  final WallPhotoFacade _wallPhotoFacade;
  List<WallPhoto> _userPhotos = [];

  UserProfileAggregator(this._userAccountFacade, this._wallPhotoFacade);

  Stream<Either<UserProfileFailure, UserProfile>> getUserProfile({
    int photosPageSize = 20,
  }) async* {
    final userPhotosResult = await _wallPhotoFacade.getUserPhotos(
      pageSize: photosPageSize,
    );

    if (userPhotosResult.isLeft()) {
      yield left(const UserProfileFailure.unexpected());
    }

    _userPhotos = [...userPhotosResult.getRightOrCrash()];

    yield* _userAccountFacade.getUserAccount().map(
          (accountResult) => accountResult.fold(
            (failure) => left(const UserProfileFailure.unexpected()),
            (account) => right(
              UserProfile(
                userId: account.id,
                email: account.email,
                raverCoins: account.raverCoins,
                username: account.username,
                favoriteClubsCount: account.favoriteClubIds.length,
                profilePictureUrl: account.profilePictureUrl,
                userPhotos: [..._userPhotos],
              ),
            ),
          ),
        );
  }

  Future<Either<UserProfileFailure, List<WallPhoto>>> getNextPageOfUserPhotos({
    WallPhoto? lastPhoto,
    int photosPageSize = 20,
  }) async {
    final userPhotos = await _wallPhotoFacade.getUserPhotos(
      lastPhoto: lastPhoto,
      pageSize: photosPageSize,
    );

    if (userPhotos.isLeft()) {
      return left(const UserProfileFailure.unexpected());
    }

    final photos = userPhotos.getRightOrCrash();

    _userPhotos = [..._userPhotos, ...photos];

    return right(_userPhotos);
  }
}
