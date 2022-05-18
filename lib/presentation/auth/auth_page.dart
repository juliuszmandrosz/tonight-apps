import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:raver_scanner/presentation/auth/sign_in/sign_in_tab.dart';
import 'package:raver_scanner/presentation/auth/sign_up/sign_up_tab.dart';
import 'package:raver_translations/raver_translations.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return LoaderOverlay(
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
                PreferredSize(
                  preferredSize: const Size(350, 350),
                  child: SizedBox(
                    width: 350,
                    child: TabBar(
                      labelStyle: textTheme.subtitle1,
                      tabs: [
                        SizedBox(
                          width: 350,
                          child: Tab(text: S().signIn),
                        ),
                        SizedBox(
                          width: 350,
                          child: Tab(text: S().signUp),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
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
        )),
      ),
    );
  }
}
