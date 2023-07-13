import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

enum Gender {
  male,
  female,
  other;

  String get label {
    switch (this) {
      case Gender.male:
        return S().male;
      case Gender.female:
        return S().female;
      case Gender.other:
        return S().otherGender;
    }
  }

  IconData get icon {
    switch (this) {
      case Gender.male:
        return FontAwesomeIcons.mars;
      case Gender.female:
        return FontAwesomeIcons.venus;
      case Gender.other:
        return FontAwesomeIcons.solidUser;
    }
  }

  Color get color {
    switch (this) {
      case Gender.male:
        return Colors.blue;
      case Gender.female:
        return Colors.pink;
      case Gender.other:
        return Colors.grey;
    }
  }
}
