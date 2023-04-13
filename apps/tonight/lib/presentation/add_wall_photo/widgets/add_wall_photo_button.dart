import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddWallPhotoButton extends StatelessWidget {
  const AddWallPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      icon: const FaIcon(FontAwesomeIcons.solidPaperPlane),
      // TODO - add translation
      label: const Text('Opublikuj'),
    );
  }
}
