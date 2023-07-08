import 'package:auth/auth.dart';
import 'package:dartz/dartz.dart';

class SignInAggregator {
  final UserAuthFacade _userAuthFacade;

  SignInAggregator(this._userAuthFacade);

  Future<Either<AuthFailure, AppUser>> signInWithGoogle() {
    return _userAuthFacade.checkIfUserIsSignedIn()
        ? _userAuthFacade.linkGoogleForUser()
        : _userAuthFacade.signInWithGoogleAsUser();
  }

  Future<Either<AuthFailure, AppUser>> signInWithApple() {
    return _userAuthFacade.checkIfUserIsSignedIn()
        ? _userAuthFacade.linkAppleForUser()
        : _userAuthFacade.signInWithAppleAsUser();
  }

  Future<Either<AuthFailure, Unit>> sendSignInEmailLink(String email) {
    return _userAuthFacade.sendSignInEmailLinkForUser(email);
  }

  Future<Either<AuthFailure, AppUser>> signInWithEmail({
    required String email,
    required Uri link,
  }) {
    return _userAuthFacade.checkIfUserIsSignedIn()
        ? _userAuthFacade.linkEmailForUser(email: email, link: link)
        : _userAuthFacade.signInWithEmailLinkAsUser(email: email, link: link);
  }
}
