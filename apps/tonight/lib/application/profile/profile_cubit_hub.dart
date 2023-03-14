import 'package:rxdart/rxdart.dart';
import 'package:tonight/application/profile/profile_cubit.dart';

class ProfileBroadcastSubject {
  final _profileSubject = BehaviorSubject<ProfileState>();

  BehaviorSubject<ProfileState> getSubject() {
    return _profileSubject;
  }

  void addToSubject(ProfileState message) {
    _profileSubject.add(message);
  }
}
