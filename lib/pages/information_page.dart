import 'package:flutter/material.dart';

import '../theme/about_app.dart';
import '../theme/app_theme.dart';
import '../widgets/cw_copyright_bar.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    Widget _title(String title, String image, String description) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 27.0,
            width: 27.0,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodyText2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ],
      );
    }

    Widget _imageSlider() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/gif/order_now.gif',
            scale: 3.5,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Image.asset(
            'assets/gif/delivery.gif',
            scale: 4.0,
          ),
        ],
      );
    }

    Widget _bodyTop() {
      return Column(
        children: [
          // Text(
          //   AboutApp.appName,
          //   style: Theme.of(context).textTheme.headline6,
          // ),
          // Text(
          //   "Hello there! This is about us.",
          //   style: Theme.of(context).textTheme.bodyText2,
          // ),
          Image.asset(
            'assets/images/app_logo_transparent.png',
            height: MediaQuery.of(context).size.width / 3.0,
            width: MediaQuery.of(context).size.width / 3.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          _title("Location", "assets/icons/location.png", AboutApp.appLocation),
          const Divider(
            color: AppThemeData.dividers,
          ),
          _title("Website", "assets/icons/website.png", AboutApp.appWebsite),
          const Divider(
            color: AppThemeData.dividers,
          ),
          _title("Email", "assets/icons/email.png", AboutApp.appEmail),
          const Divider(
            color: AppThemeData.dividers,
          ),
          _title("Phone", "assets/icons/phone.png", AboutApp.appPhone),
          const Divider(
            color: AppThemeData.dividers,
          ),
          const SizedBox(
            height: 20.0,
          ),
          _imageSlider(),
          const SizedBox(
            height: 20.0,
          ),
        ],
      );
    }

    Widget _bodyBottom() {
      return const CWCopyrightBar();
    }

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
              ),
              onPressed: () async {
                Navigator.pop(context);
                debugPrint(
                    "////////////// ----------- CLOSE PAGE ----------- //////////////");
              },
            ),
            backgroundColor: AppThemeData.backgroundLight,
            centerTitle: true,
            title: Text(
              AboutApp.appName,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
        body: Container(
          color: AppThemeData.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                _bodyTop(),
                _bodyBottom(),
              ],
            ),
          ),
        ));
  }
}
