import 'package:account_settings/account_settings.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:tonight/domain/user_details/user_details_failure.dart';
import 'package:tonight/domain/user_details/user_details_model.dart';

class UserDetailsAggregator {
  final UserAccountFacade _userAccountFacade;
  final UserClubFacade _userClubFacade;

  UserDetailsAggregator(this._userAccountFacade, this._userClubFacade);

  Future<Either<UserDetailsFailure, Option<UserDetails>>> getUserDetails(
    String userId,
  ) async {
    final userResult = await _userAccountFacade.getUserById(userId);

    if (userResult.isLeft()) {
      return userResult.getLeftOrCrash().maybeWhen(
            userNotFound: () => right(none()),
            orElse: () => left(const UserDetailsFailure.unexpected()),
          );
    }

    final user = userResult.getRightOrCrash();
    final clubs = await _userClubFacade.getClubsByIds(user.favoriteClubIds);

    if (clubs.isLeft()) {
      return left(const UserDetailsFailure.unexpected());
    }

    final result = UserDetails(
      userId: user.id,
      raverCoins: user.raverCoins,
      username: user.username,
      profilePictureUrl: user.profilePictureUrl,
      favoriteClubs: clubs.getRightOrCrash(),
    );

    return right(some(result));
  }
}
