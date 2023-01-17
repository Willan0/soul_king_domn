import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';

import 'easy_text.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({Key? key,required this.data,this.checked= false}) : super(key: key);
    final String data;
    final bool checked;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((checked)?dMp5x:dMp10x),
      decoration: BoxDecoration(
          color: (checked)?cShadow:cAmber,
          borderRadius: const BorderRadius.all(Radius.circular(dR30x))
      ),
      child: EasyTextWidgets(data: data,fontSize: (checked)?fontSize0:fontSize2,)
    );
  }
}
