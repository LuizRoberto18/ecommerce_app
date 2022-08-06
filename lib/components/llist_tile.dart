import 'package:flutter/material.dart';

import '../constants.dart';

class ListTileEdited extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? leading;
  final Widget? trailing;

  const ListTileEdited({
    Key? key,
    required this.title,
    required this.subTitle,
    this.leading,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(
          color: cModeDarkColorFontTitle,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
          color: cModeDarkColorFontSubTitle,
        ),
      ),
      trailing: trailing,
    );
  }
}
