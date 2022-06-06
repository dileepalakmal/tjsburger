import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/about_app.dart';
import '../theme/app_theme.dart';

class CWCopyrightBar extends StatelessWidget {
  const CWCopyrightBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _visitUs() {
      return Column(
        children: [
          Text(
            "Visit Us",
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(
            height: 5.0,
          ),
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image.asset(
              'assets/images/online_bite_50.png',
              scale: 5.0,
            ),
            onTap: () async {
              if (!await launch(AboutApp.urlOnlineBite)) {
                throw 'Could not launch ${AboutApp.appWebsite}';
              }
            },
          ),
        ],
      );
    }

    Widget _copyrightBar() {
      return Text(
        AboutApp.appCopyright,
        style: Theme.of(context).textTheme.caption,
        textAlign: TextAlign.center,
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Divider(
          color: AppThemeData.dividers,
        ),
        _visitUs(),
        const SizedBox(
          height: 10.0,
        ),
        _copyrightBar(),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
