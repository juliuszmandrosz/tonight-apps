import 'package:translations/translations.dart';

enum MenuWallPhotoFilter {
  showWholeWorld;

  String get label {
    switch (this) {
      case MenuWallPhotoFilter.showWholeWorld:
        return S().wholeWorld;
    }
  }
}
