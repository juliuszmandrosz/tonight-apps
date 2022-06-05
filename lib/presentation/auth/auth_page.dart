import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/presentation/auth/sign_in/sign_in_tab.dart';
import 'package:raver_partners/presentation/auth/sign_up/sign_up_tab.dart';
import 'package:raver_partners/presentation/auth/widgets/partners_logo.dart';
import 'package:raver_translations/raver_translations.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayColor: context.shadowColor,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  const Flexible(
                    flex: 1,
                    child: PartnersLogo(),
                  ),
                  PreferredSize(
                    preferredSize: const Size(350, 350),
                    child: SizedBox(
                      width: 350,
                      child: TabBar(
                        isScrollable: false,
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                        labelStyle: context.subtitle1,
                        tabs: [
                          SizedBox(
                            width: 350,
                            child: Tab(
                              child: AutoSizeText(
                                S().signIn,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 350,
                            child: Tab(
                              child: AutoSizeText(
                                S().signUp,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SignInTab(),
                          SignUpTab(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
