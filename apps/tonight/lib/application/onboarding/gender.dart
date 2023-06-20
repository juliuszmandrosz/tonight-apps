import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
  other;

  String get label {
    // TODO - add translations
    switch (this) {
      case Gender.male:
        return 'Mezczyzna';
      case Gender.female:
        return 'Kobieta';
      case Gender.other:
        return 'Inna';
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
