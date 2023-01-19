import 'package:flutter/cupertino.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';

import '../constant/colors.dart';
import '../datas/datas.dart';
import 'more_item.dart';

class ActorWidget extends StatelessWidget {
  const ActorWidget({Key? key,required this.list,this.checked = false, required this.title, required this.more}) : super(key: key);
  final List<Actors> list ;
  final String title;
  final String more;
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
          const SizedBox(height: dMp20x,),
          (checked)?
          Padding(
            padding: const EdgeInsets.only(left: dMp20x),
            child: EasyTextWidgets(data: title),
          ):
          MoreItem(title:title ,more: more,),
          const SizedBox(height: dMp20x,),
          SizedBox(
            width: dWidth(context),
            height: dWh180x,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: actorList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: dWh160x,
                   height: dWh180x,
                   padding:const EdgeInsets.only(left: dMp20x),
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
                                 Row(
                                   children: const [
                                      Icon(CupertinoIcons.hand_thumbsup_fill,color: cAmber,size: iconSize,),
                                      EasyTextWidgets(data: "YOU LIKED 13 MOVIES",fontSize: fontSize,color: cAmber,),
                                   ],
                                 )
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
