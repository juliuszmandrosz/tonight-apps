import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight_partners/presentation/overview/widgets/revenue_chart.dart';
import 'package:tonight_partners/presentation/overview/widgets/ticket_sales_chart.dart';
import 'package:tonight_partners/presentation/overview/widgets/vip_sales_chart.dart';
import 'package:translations/translations.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              isScrollable: false,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                Tab(
                  icon: const Icon(FontAwesomeIcons.coins),
                  child: AutoSizeText(
                    S().revenue,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                Tab(
                  icon: const FaIcon(FontAwesomeIcons.ticket),
                  child: AutoSizeText(
                    S().tickets(2),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
                Tab(
                  icon: const FaIcon(FontAwesomeIcons.crown),
                  child: AutoSizeText(
                    S().vips,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  RevenueChart(),
                  TicketSalesChart(),
                  VipSalesChart(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
