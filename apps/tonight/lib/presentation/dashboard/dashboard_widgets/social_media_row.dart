import 'package:common/extensions/typography_extensions.dart';
import 'package:common/theme/dark_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/dashboard/bloc/dashboard_bloc.dart';
import 'package:tonight/presentation/dashboard/dashboard_widgets/gradient_icon.dart';

class SocialMediaRow extends StatelessWidget {
  final List<Color> colors;
  final double iconSize;

  const SocialMediaRow({
    required this.colors,
    required this.iconSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final links = state.dashboardData.links;
        final events = state.dashboardData.tonightEvents;
        return Column(
          children: [
            if (events.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bądź z nami na bieżąco!',
                    style: context.titleMedium.copyWithSecondaryColor(),
                  ),
                ),
              ),
            if (events.isNotEmpty) const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GradientIcon(
                  icon: FontAwesomeIcons.instagram,
                  url: links.instagram,
                  colors: colors,
                  size: iconSize,
                ),
                GradientIcon(
                  icon: FontAwesomeIcons.facebook,
                  url: links.facebook,
                  colors: colors,
                  size: iconSize,
                ),
                GradientIcon(
                  icon: FontAwesomeIcons.discord,
                  url: links.discord,
                  colors: colors,
                  size: iconSize,
                ),
                GradientIcon(
                  icon: FontAwesomeIcons.tiktok,
                  url: links.tikTok,
                  colors: colors,
                  size: iconSize,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
