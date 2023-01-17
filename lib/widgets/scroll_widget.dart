import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/datas/datas.dart';
import 'package:soul_king_domn/pages/detail_page.dart';
import 'package:soul_king_domn/utils/screen_extension.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';
import 'package:soul_king_domn/widgets/rating_widget.dart';

class ScrollViewWidget extends StatelessWidget {
  const ScrollViewWidget({Key? key,required this.list}) : super(key: key);
    final List<Data> list;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: dWidth(context),
      height: dWh280x,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 5,);
        },
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            navigateToNextScreen(context,DetailPage(imgUrl: list[index].imgUrl, name: list[index].name));
          },
          child: Container(
            width: dWh160x,
            height: dWh240x,
            margin: const EdgeInsets.only(left: dMp20x),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                EasyCachedImage(width: dWh140x,height: dWh180x, imgUrl: list[index].imgUrl,),
                const SizedBox(height: dMp10x,),
                EasyTextWidgets(data: list[index].name,),
                Row(children: const [
                  EasyTextWidgets(data: "3.4"),
                  RatingStarWidget()
                ],)
              ],
            ),
          ),
        );
      },),
    );
  }
}
