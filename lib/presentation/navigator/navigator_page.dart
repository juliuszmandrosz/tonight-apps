import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/application/auth/auth_cubit.dart';
import 'package:raver/application/network_check/network_check_cubit.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:raver/presentation/core/raver_app_bar.dart';
import 'package:raver/presentation/routes/app_router.dart';

class NavigatorPage extends StatelessWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - Find why this build method get called twice
    return BlocListener<NetworkCheckCubit, NetworkCheckState>(
      bloc: context.read<NetworkCheckCubit>(),
      listener: (context, state) {
        if (!state.isConnected) {
          AutoRouter.of(context).push(const NetworkLostRoute());
        }
      },
      child: AutoTabsScaffold(
        appBarBuilder: (_, tabsRouter) => RaverAppBar(
          actions: [
            RaverIconButton(
              onPressed: () {
                context.read<AuthCubit>().signOut();
                AutoRouter.of(context).replace(const AuthRoute());
              },
              icon: const FaIcon(
                FontAwesomeIcons.signOutAlt,
                color: DefaultColors.backgroundColor,
              ),
            )
          ],
        ),
        routes: const [HomeRouter(), TicketsRouter()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: S().home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  FontAwesomeIcons.ticketAlt,
                ),
                label: S().tickets(2),
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.favorite,
                ),
                label: S().favorites,
              ),
              BottomNavigationBarItem(
                icon: const FaIcon(
                  FontAwesomeIcons.userAlt,
                ),
                label: S().profile,
              ),
            ],
          );
        },
      ),
    );
  }
}
