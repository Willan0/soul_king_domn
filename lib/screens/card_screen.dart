import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/dimens.dart';

import '../constant/colors.dart';
import '../widgets/easy_text.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: dMp10x),
      child: SizedBox(
        height: dWh200x,
        child: Card(
          color: cSecondaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: dMp20x,vertical: dMp20x),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    EasyTextWidgets(data: "Check Movie \nShowtimes",fontSize: fontSize3,),
                    Text('SEE MORES',style: TextStyle(color: cAmberShadow,fontSize: fontSize0,decoration: TextDecoration.underline),)
                  ],
                ),
                const Icon(Icons.location_on,size: iconSize1,color: cW,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
