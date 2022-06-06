import 'package:flutter/material.dart';

import '../services/page_navigation.dart';
import '../widgets/cw_banner.dart';
import '../widgets/cw_dashboard_button.dart';
import '../widgets/cw_copyright_bar.dart';
import '../theme/about_app.dart';
import '../theme/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _bodyMiddle() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CWDashboardButton(
                iconImage: 'assets/icons/order.png',
                title: "Order",
                description: "Place your order now.",
                onPressed: PageNavigation(context).gotoOrderPage),
            CWDashboardButton(
                iconImage: 'assets/icons/menu.png',
                title: "Menu",
                description: "View the menu here.",
                onPressed: PageNavigation(context).gotoMenuPage),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CWDashboardButton(
                iconImage: 'assets/icons/info.png',
                title: "Info",
                description: "This is about us.",
                onPressed: PageNavigation(context).gotoInformationPage),
            CWDashboardButton(
                iconImage: 'assets/icons/contact.png',
                title: "Contact",
                description: "Give us a quick call.",
                onPressed: PageNavigation(context).gotoContactPage),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeData.pagePadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20.0,
            ),
            CWBanner(cardImage: 'assets/images/banner.png', onPressed: () {}),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              AboutApp.appName,
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
            Text(
              "Delicious food for you",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            _bodyMiddle(),
            const SizedBox(
              height: 20.0,
            ),
            const CWCopyrightBar(),
          ],
        ),
      ),
    ));
  }
}
