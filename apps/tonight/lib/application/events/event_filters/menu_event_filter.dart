import 'package:translations/translations.dart';

enum MenuEventFilter {
  dressCode(),
  music,
  minAge,
  price,
  showOnlyConcerts;

  String get label {
    switch (this) {
      case MenuEventFilter.dressCode:
        return S().dressCode;
      case MenuEventFilter.music:
        return S().music;
      case MenuEventFilter.minAge:
        return S().minAge;
      case MenuEventFilter.price:
        return S().price;
      case MenuEventFilter.showOnlyConcerts:
        // TODO - add translation
        return 'Tylko koncerty';
    }
  }
}
