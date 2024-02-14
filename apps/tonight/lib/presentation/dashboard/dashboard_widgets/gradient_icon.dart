import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final List<Color> colors;
  final double size;

  const GradientIcon({
    required this.icon,
    required this.url,
    required this.colors,
    this.size = 60.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final failure = await launchURL(Uri.parse(url));
        failure.fold(
          () {},
          (msg) => context.showSnackbarMessage(S().errorOpeningLink),
        );
      },
      child: ClipPath(
        clipBehavior: Clip.antiAlias,
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: colors,
            tileMode: TileMode.mirror,
          ).createShader(bounds),
          child: FaIcon(
            icon,
            size: size,
          ),
        ),
      ),
    );
  }
}
