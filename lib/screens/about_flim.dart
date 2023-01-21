import 'package:flutter/cupertino.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';

import '../constant/dimens.dart';

class AboutFilm extends StatelessWidget {
  const AboutFilm({Key? key,required this.name,required this.generic,required this.country,required this.date,required this.description}) : super(key: key);
 final String name;
 final String generic;
 final String country;
 final String date;
 final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dWidth(context),
      height: dWh400x,
      padding: const EdgeInsets.symmetric(horizontal: dMp20x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              flex: dF3x,
              child: EasyTextWidgets(data: 'ABOUT FILM',color: cWShadow,fontSize: fontSize0,)),
          // SizedBox(height: dMp10x,),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Original Title", item: name)),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Type", item: generic)),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Production", item: country)),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: 'Premier', item: date)),
          Expanded(
              flex: dF19x,
              child: AboutFilmItems(itemTitle: "Description", item: description)),
        ],
      ),
    );
  }
}
class AboutFilmItems extends StatelessWidget {
  const AboutFilmItems({Key? key, required this.itemTitle, required this.item}) : super(key: key);
  final String itemTitle;
  final String item;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: dF2x,
            child: EasyTextWidgets(data: itemTitle,color: cShadow,fontSize: fontSize0,)),
        Expanded(
          flex:dF3x,
            child: EasyTextWidgets(data: item,color: cW,fontSize: fontSize0,)),
      ],
    );
  }
}

