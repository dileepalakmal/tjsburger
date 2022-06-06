import 'package:flutter/material.dart';
import './/theme/app_theme.dart';

class CWBanner extends StatelessWidget {
  const CWBanner({Key? key, required this.cardImage, required this.onPressed})
      : super(key: key);

  final String cardImage;
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
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 3.8,
            child: Image.asset(
              cardImage,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
