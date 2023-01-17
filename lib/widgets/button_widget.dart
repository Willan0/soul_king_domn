
import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,required this.icon,required this.label,this.checked=false}) : super(key: key);

  final String icon;
  final String label;
  final bool checked;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: (){},
        icon:  Icon(
          IconData(int.parse("0x$icon"), fontFamily: 'MaterialIcons'),
          color: (!checked)?cBShadow:cAmber,
        ),
        label: Text(label),
        style: ElevatedButton.styleFrom(
          foregroundColor: cW,
          backgroundColor: (checked)?Colors.transparent:cAmber,
          shape:  RoundedRectangleBorder(
            side: BorderSide(
              width: (checked)?2:0,
              color: cW
            ),
            borderRadius: const BorderRadius.all(Radius.circular(dR30x)),
          )
        ),
    );
  }
}
