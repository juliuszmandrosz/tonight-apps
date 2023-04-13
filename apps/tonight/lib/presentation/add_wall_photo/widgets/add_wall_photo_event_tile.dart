import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/dense_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class AddWallPhotoEventTile extends StatelessWidget {
  const AddWallPhotoEventTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      leading: const FaIcon(FontAwesomeIcons.fire),
      trailing: const FaIcon(
        FontAwesomeIcons.chevronRight,
        size: 16,
      ),
      title: Text(
        S().eventName,
        style: context.titleMedium.copyWith(color: context.secondaryColor),
      ),
    );
  }
}
