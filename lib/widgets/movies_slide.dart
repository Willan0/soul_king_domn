import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';

import '../constant/colors.dart';

class MovieSlide extends StatelessWidget {
  const MovieSlide({Key? key, required this.imgUrl, required this.name,this.checked = false,this.data = ""})
      : super(key: key);
  final String imgUrl;
  final String name;
  final bool checked;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (checked)?dWidth(context)*0.8:dWidth(context),
      height: (checked)?dWh240x:dWh200x,
      padding: (checked)? const EdgeInsets.only(left: dMp20x):const EdgeInsets.symmetric(horizontal: dMp0x),
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(color: cPrimaryColor, blurRadius: dR10x, offset: Offset(0, 2))
      ]),
      child: Stack(
        children: [
          EasyCachedImage(imgUrl: imgUrl, height: (checked)?dWh240x:dWh200x, width: dWidth(context)),
          const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.play_circle,
                color: Colors.amber,
                size: iconSize1,
              )),
          (checked)?
            Positioned(
              bottom: dMp10x,
              left: dMp10x,
              child: Text(
                data.toUpperCase(),
                style: const TextStyle(
                    color: cWShadow,
                    fontSize: fontSize2,
                    fontWeight: FontWeight.w700),
              )
          ):
            Container(
            width: dWidth(context),
            height: dWh200x,
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [cSecondaryShadow, Colors.transparent, cPrimaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 1]),
            ),
          ),
          Positioned(
              bottom: (checked)?dMp40x:dMp10x,
              left: dMp10x,
              child: Text(
                name,
                style: const TextStyle(
                    color: cW,
                    fontSize: fontSize2,
                    fontWeight: FontWeight.w700),
              )),
        ],
      ),
    );
  }
}
