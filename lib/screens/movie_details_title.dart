import 'package:flutter/material.dart';

import '../constant/dimens.dart';
import '../widgets/easy_text.dart';
import '../widgets/rating_widget.dart';
import '../widgets/rounded_container.dart';

class MovieDetailTitle extends StatelessWidget {
  const MovieDetailTitle({Key? key,required this.name}) : super(key: key);
final String name;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: dMp0x,
      left: dMp10x,
      right: dMp10x,
      child: SizedBox(
        width: dWidth(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const RoundedContainer(data:"2021"),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:  const [
                    RatingStarWidget(),
                    EasyTextWidgets(data: '4040 votes',fontSize: fontSize0,color: Colors.grey,fontWeight: FontWeight.bold,)
                  ],
                ),
                const EasyTextWidgets(data: '7.24',fontSize: fontSize4,)
              ],
            ),
            const SizedBox(height: dMp10x,),
            EasyTextWidgets(data: name,fontSize: fontSize3,),
            const SizedBox(height: dMp10x,),
          ],
        ),
      ),
    );
  }
}
