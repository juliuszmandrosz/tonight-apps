import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/responsive_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class NotEnoughRaverCoinsInfo extends StatelessWidget {
  final int discountPrice;
  final int availableRaverCoins;

  const NotEnoughRaverCoinsInfo({
    required this.discountPrice,
    required this.availableRaverCoins,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: context.readAuthCubit.checkIfUserIsAnonymous()
          ? () => context.pushRoute(const SignInRoute())
          : null,
      child: SizedBox(
        width: context.width,
        height: 80,
        child: Card(
          color: context.primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const FaIcon(FontAwesomeIcons.circleInfo),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    // TODO - add translation
                    context.readAuthCubit.checkIfUserIsAnonymous()
                        ? 'Aby móc zdobywać nagrody, zaloguj sie do aplikacji'
                        : 'Brakuje Ci ${discountPrice - availableRaverCoins} Raver Coins, '
                            'aby odebrać te znizke.',
                    style: context.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
