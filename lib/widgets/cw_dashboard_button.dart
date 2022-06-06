import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CWDashboardButton extends StatelessWidget {
  const CWDashboardButton(
      {Key? key,
        required this.iconImage,
        required this.title,
        required this.description,
        required this.onPressed})
      : super(key: key);

  final String iconImage;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPressed,
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          color: AppThemeData.white,
          width: 150.0,
          height: 120.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconImage,
                fit: BoxFit.cover,
                height: 60.0,
                width: 60.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.button,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

