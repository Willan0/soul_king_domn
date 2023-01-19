import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/constant/string.dart';
import 'package:soul_king_domn/datas/datas.dart';
import 'package:soul_king_domn/screens/card_screen.dart';
import 'package:soul_king_domn/screens/slide_show.dart';
import 'package:soul_king_domn/screens/tab_bar_screen.dart';
import 'package:soul_king_domn/screens/upcoming_screen.dart';
import 'package:soul_king_domn/widgets/actor_widget.dart';

import '../widgets/easy_text.dart';
import '../widgets/more_item.dart';
import '../widgets/scroll_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      appBar: AppBar(
        backgroundColor: cSecondaryColor,
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(actionTitle),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: dWh20x,
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
              SlideShow(),
              const Padding(padding:EdgeInsets.only(left: 20),child: EasyTextWidgets(data:"BEST POPULAR MOVIE AND SERIES",fontWeight: FontWeight.w300,fontSize: 13,)),
              const SizedBox(height: dMp20x,),
              ScrollViewWidget(list: popularMovies),
              const SizedBox(height: dMp20x,),
              const CardScreen(),
              const SizedBox(height: dMp20x,),
              const TabBarScreen(),
              const SizedBox(height: dMp20x,),
              const MoreItem(title:"showcases" ,more: "more showcase",),
              const SizedBox(height: dMp20x,),
              UpcomingScreen(list: upcomingMovies),
              const SizedBox(height: dMp20x,),
              ActorWidget(list: actorList,title: "Actors",more: "More Actors",),
              const SizedBox(height: dMp20x,),
            ],
          ),
      ]),
    );
  }
}
