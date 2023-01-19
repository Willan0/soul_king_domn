import 'package:flutter/cupertino.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';

import '../constant/dimens.dart';
import '../constant/string.dart';

class AboutFilm extends StatelessWidget {
  const AboutFilm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dWidth(context),
      height: dWh400x,
      padding: const EdgeInsets.symmetric(horizontal: dMp20x),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const[
          Expanded(
              flex: dF3x,
              child: EasyTextWidgets(data: 'ABOUT FILM',color: cWShadow,fontSize: fontSize0,)),
          // SizedBox(height: dMp10x,),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Original Title", item: "End Game")),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Type", item: "Action")),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: "Production", item: "Japan")),
          Expanded(
              flex: dF2x,
              child: AboutFilmItems(itemTitle: 'Premier', item: '20-1-2019')),
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

