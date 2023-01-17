import 'package:flutter/cupertino.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';

import '../constant/colors.dart';
import '../datas/datas.dart';
import 'more_item.dart';

class ActorWidget extends StatelessWidget {
  const ActorWidget({Key? key,required this.list,this.checked = false}) : super(key: key);
  final List<Actors> list ;
  final bool checked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: dWidth(context),
      height: dWh280x,
      color: cSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: dMp10x,),
          (checked)?
          const EasyTextWidgets(data: 'Actors'):
          const MoreItem(title:"best actors" ,more: "more actors",),
          const SizedBox(height: dMp20x,),
          SizedBox(
            width: dWidth(context),
            height: dWh180x,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: actorList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(left: dMp10x),
                  width: dWh160x,
                   height: dWh180x,
                   child: Stack(
                         children: [
                           EasyCachedImage(imgUrl: list[index].imgUrl, height: dWh200x, width: dWh160x),
                           Positioned(
                             bottom: dMp10x,
                             left: dMp5x,
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisSize: MainAxisSize.min,
                               children:  [
                                 EasyTextWidgets(data: list.elementAt(index).name,fontSize: fontSize0,),
                                 const EasyTextWidgets(data: "YOU LIKED 13 MOVIES",fontSize: fontSize,color: cAmber,)
                               ],
                             ),
                           ),
                           const Align(
                             alignment: Alignment.topRight,
                             child: Icon(
                               CupertinoIcons.heart,
                               color: cW,
                             ),
                           ),
                         ],
                       ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
