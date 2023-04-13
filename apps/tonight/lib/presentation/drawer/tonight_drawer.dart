import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/application/network_check/network_check_cubit.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/cubit_status_extensions.dart';
import 'package:common/extensions/option_extensions.dart';
import 'package:common/utils/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launch_review/launch_review.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/terms_of_service/terms_of_service_cubit.dart';
import 'package:tonight/injection.dart';
import 'package:tonight/presentation/drawer/drawer_destination.dart';
import 'package:tonight/presentation/drawer/tonight_drawer_destination.dart';
import 'package:tonight/presentation/drawer/tonight_drawer_header.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class TonightDrawer extends StatefulWidget {
  const TonightDrawer({Key? key}) : super(key: key);

  @override
  State<TonightDrawer> createState() => _TonightDrawerState();
}

class _TonightDrawerState extends State<TonightDrawer> {
  var selectedIndex = 0;

  final destinations = [
    DrawerDestination(
      icon: FontAwesomeIcons.solidStar,
      label: S().rateUs,
    ),
    DrawerDestination(
      icon: FontAwesomeIcons.phone,
      label: S().contact,
    ),
    DrawerDestination(
      icon: FontAwesomeIcons.bookBookmark,
      label: S().termsOfService,
    ),
    DrawerDestination(
      icon: FontAwesomeIcons.book,
      label: S().privacyPolicy,
    ),
    DrawerDestination(
      icon: FontAwesomeIcons.rightFromBracket,
      label: S().signOut,
    ),
    DrawerDestination(
      icon: FontAwesomeIcons.trash,
      label: S().deleteAccount,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TermsOfServiceCubit>(
        param1: context.read<NetworkCheckCubit>(),
      ),
      child: BlocListener<TermsOfServiceCubit, TermsOfServiceState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
            () {},
            (message) => context.showSnackbarMessage(message),
          );

          if (state.status.isSuccess() && state.documentUrl.isSome()) {
            launchURL(Uri.parse(state.documentUrl.getOrCrash()));
          }

          state.status.isLoading()
              ? context.loaderOverlay.show()
              : context.loaderOverlay.hide();
        },
        child: Builder(
          builder: (ctx) {
            return NavigationDrawer(
              onDestinationSelected: (i) => _handleOnTap(i, ctx),
              selectedIndex: selectedIndex,
              children: [
                const SizedBox(height: 32),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: TonightDrawerHeader(),
                ),
                const SizedBox(height: 44),
                ...destinations.map(
                  (destination) => NavigationDrawerDestination(
                    icon: FaIcon(destination.icon),
                    label: AutoSizeText(
                      destination.label,
                      maxLines: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Divider(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  _handleOnTap(int index, BuildContext ctx) async {
    setState(() {
      selectedIndex = index;
    });

    switch (TonightDrawerDestination.values[index]) {
      case TonightDrawerDestination.rateUs:
        await LaunchReview.launch(
          iOSAppId: '1629723394',
          androidAppId: 'com.raverteam.tonight',
        );
        break;
      case TonightDrawerDestination.contact:
        ctx.pushRoute(const ContactRoute());
        break;
      case TonightDrawerDestination.termsOfService:
        ctx.read<TermsOfServiceCubit>().getTermsOfService();
        break;
      case TonightDrawerDestination.privacyPolicy:
        ctx.read<TermsOfServiceCubit>().getPrivacyPolicy();
        break;
      case TonightDrawerDestination.signOut:
        _handleSignOut(ctx);
        break;
      case TonightDrawerDestination.deleteAccount:
        _handleDeleteAccount(ctx);
        break;
    }
  }

  _handleSignOut(BuildContext ctx) async {
    final result = await ctx.showConfirmationDialogWithCustomMessage(
      S().confirmSignOut,
    );

    if (ctx.mounted && (result ?? false)) {
      ctx.read<AuthCubit>().signOut();
    }
  }

  _handleDeleteAccount(BuildContext ctx) async {
    final result = await ctx.showConfirmationDialogWithCustomMessage(
      S().confirmDeleteAccount,
    );

    if (ctx.mounted && (result ?? false)) {
      ctx.read<AuthCubit>().deleteAccount();
    }
  }
}
