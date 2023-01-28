import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/datas/datas.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';

import '../widgets/scroll_widget.dart';

class RelatedMovies extends StatefulWidget {
  const RelatedMovies({Key? key}) : super(key: key);

  @override
  State<RelatedMovies> createState() => _RelatedMoviesState();
}

class _RelatedMoviesState extends State<RelatedMovies> {
  var item = tabViewItems.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dWidth(context),
      height: dWh320x,
      color: cPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Padding(padding: EdgeInsets.only(left: dMp20x),child:  EasyTextWidgets(data: 'Related movies',color: cShadow,fontSize: fontSize0,)),
          const SizedBox(height: dMp10x,),
          ScrollViewWidget(list: item)
        ],
      ),
    );
  }
}
