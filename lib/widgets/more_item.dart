
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/dimens.dart';
import 'easy_text.dart';

class MoreItem extends StatelessWidget {
  const MoreItem({Key? key, required this.title, required this.more}) : super(key: key);
 final String title;
 final String more;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: dMp20x),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          EasyTextWidgets(data: title.toUpperCase(),fontSize: fontSize0,color: cShadow),
          EasyTextWidgets(data: more.toUpperCase(),fontSize: fontSize0,color: cW,decoration: TextDecoration.underline,)
        ],),
    );
  }
}
