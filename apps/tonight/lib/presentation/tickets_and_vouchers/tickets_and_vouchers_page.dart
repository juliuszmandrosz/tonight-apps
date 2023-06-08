import 'package:flutter/material.dart';
import 'package:tonight/presentation/tickets/tickets_page.dart';
import 'package:tonight/presentation/tickets_and_vouchers/widgets/tickets_and_vouchers_app_bar.dart';
import 'package:tonight/presentation/vouchers/vouchers_page.dart';

class TicketsAndVouchersPage extends StatelessWidget {
  const TicketsAndVouchersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) => [
              TicketsAndVouchersTabBar(innerBoxIsScrolled: innerBoxIsScrolled),
            ],
            body: const Padding(
              padding: EdgeInsets.all(16),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  VouchersPage(),
                  TicketsPage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
