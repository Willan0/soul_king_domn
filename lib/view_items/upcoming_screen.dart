import 'package:flutter/material.dart';
import 'package:soul_king_domn/datas/datas.dart';

import '../constant/dimens.dart';
import '../widgets/movies_slide.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({Key? key,required this.list}) : super(key: key);
  final List<BannerScreen> list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dWidth(context),
      height: dWh240x,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: dMp5x,),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieSlide(imgUrl: list[index].imgUrl, name: list.elementAt(index).name,checked: true,data: list.elementAt(index).date,);
        },
      ),
    );
  }
}
