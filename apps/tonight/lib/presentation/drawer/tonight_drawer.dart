import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:launch_review/launch_review.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:tonight/application/app_links/terms_of_service_cubit.dart';
import 'package:tonight/application/core/tonight_constants.dart';
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
  static const socialMediaIconSize = 45.0;

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
      icon: FontAwesomeIcons.arrowRightFromBracket,
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
      create: (context) =>
          getIt<AppLinksCubit>(
            param1: context.read<NetworkCheckCubit>(),
          ),
      child: BlocListener<AppLinksCubit, TermsOfServiceState>(
        listener: (context, state) {
          state.snackbarMessage.fold(
                () {},
                (message) => context.showSnackbarMessage(message),
          );

          if (state.status.isSuccess() && state.url.isSome()) {
            launchURL(Uri.parse(state.url.getOrCrash()));
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
              backgroundColor: context.backgroundColor,
              children: [
                const SizedBox(height: 32),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: TonightDrawerHeader(),
                ),
                const SizedBox(height: 44),
                ...destinations.map(
                      (destination) =>
                      NavigationDrawerDestination(
                        icon: FaIcon(destination.icon),
                        label: Expanded(
                          child: AutoSizeText(
                            destination.label,
                            maxLines: 2,
                          ),
                        ),
                      ),
                ),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28),
                  child: Divider(),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    // TODO: Add translations
                    'Dołącz do naszej społeczności!',
                    style: context.titleMedium.copyWithSecondaryColor(),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleIconButton(
                        icon: FontAwesomeIcons.instagram,
                        onPressed: ctx
                            .read<AppLinksCubit>()
                            .launchInstagram,
                        color: const Color(0xFFE1306C),
                        size: socialMediaIconSize,
                      ),
                      CircleIconButton(
                        icon: FontAwesomeIcons.tiktok,
                        onPressed: ctx
                            .read<AppLinksCubit>()
                            .launchTikTok,
                        color: const Color(0xFF69C9D0),
                        size: socialMediaIconSize,
                      ),
                      CircleIconButton(
                        icon: FontAwesomeIcons.facebookF,
                        onPressed: ctx
                            .read<AppLinksCubit>()
                            .launchFacebook,
                        color: const Color(0xFF4267B2),
                        size: socialMediaIconSize,
                      ),
                      CircleIconButton(
                        icon: FontAwesomeIcons.discord,
                        onPressed: ctx
                            .read<AppLinksCubit>()
                            .launchDiscord,
                        color: const Color(0xFF7289DA),
                        size: socialMediaIconSize,
                      ),

                    ],
                  ),
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
          iOSAppId: kAppStoreId,
          androidAppId: kPackageName,
        );
        break;
      case TonightDrawerDestination.contact:
        ctx.pushRoute(const ContactRoute());
        break;
      case TonightDrawerDestination.termsOfService:
        ctx.read<AppLinksCubit>().launchTermsOfService();
        break;
      case TonightDrawerDestination.privacyPolicy:
        ctx.read<AppLinksCubit>().launchPrivacyPolicy();
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
