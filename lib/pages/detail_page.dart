
import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/constant/string.dart';
import 'package:soul_king_domn/datas/datas.dart';
import 'package:soul_king_domn/screens/about_flim.dart';
import 'package:soul_king_domn/screens/movie_details_title.dart';
import 'package:soul_king_domn/screens/related_movies.dart';
import 'package:soul_king_domn/utils/screen_extension.dart';
import 'package:soul_king_domn/widgets/actor_widget.dart';
import 'package:soul_king_domn/widgets/button_widget.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';
import 'package:soul_king_domn/widgets/rounded_container.dart';

import 'home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,required this.imgUrl,
    required this.name,
    required this.description
  }) : super(key: key);
  final String imgUrl;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: cPrimaryColor,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBarItem(imgUrl: imgUrl, name: name,)
          ],
          body:  DetailBody(description: description,),
      ),
    );
  }
}
class SliverAppBarItem extends StatelessWidget {
  const SliverAppBarItem({
    Key? key,
    required this.imgUrl, required this.name,

  }) : super(key: key);

  final String imgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: cPrimaryColor,
      leading: Padding(
        padding: const EdgeInsets.only(left: dMp10x),
        child: CircleAvatar(
          radius: dR30x,
          backgroundColor: cSecondaryShadow,
          child: IconButton(
            onPressed: (){
              navigateToNextScreen(context,const HomePage());
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
      expandedHeight: dWh280x,
      actions: const[
        Icon(Icons.search,size: iconSize0,),
        SizedBox(width: dMp20x,)
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            EasyCachedImage(imgUrl: imgUrl,width: dWidth(context), height: dWh320x),
            Container(
                width: dWidth(context),
                height: dWh320x,
                foregroundDecoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [cSecondaryShadow, Colors.transparent, cPrimaryColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0, 1]),
                )),
            MovieDetailTitle(name: name),
        ]),
      ),
    );
  }
}
class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
    required this.description
  }) : super(key: key);
  final String description;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: dMp10x),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: dWh20x,),
              //Category
              Wrap(
                spacing: dMp10x,
                runSpacing: dMp5x,
                children:   const [
                  Icon(Icons.access_time,color: cAmberShadow,),
                  EasyTextWidgets(data: '3hr 12min'),
                  RoundedContainer(data: "Fiction",checked: true,),
                  RoundedContainer(data: "Adventure",checked: true,),
                  RoundedContainer(data: "Action",checked: true,),
                ],
              ),
              const SizedBox(height: dWh10x,),
              //story line
              const EasyTextWidgets(data: storyLine,color: cWShadow,),
              const SizedBox(height: dWh10x,),
              EasyTextWidgets(data: description,fontSize: fontSize0,),
              const SizedBox(height: dWh10x,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ButtonWidget(icon: 'e4cc', label: "PLAY TRAILER"),
                  SizedBox(width: dMp10x,),
                  ButtonWidget(icon: 'e5f9', label: "RATE MOVIE",checked: true,)
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: dWh10x,),
        ActorWidget(list: actorList,checked: true,title: "Actors",more: "_"),
        const SizedBox(height: dWh10x,),
        const AboutFilm(),
        const SizedBox(height: dWh10x,),
        ActorWidget(list: creatorList,title: "Creators",more: "More Creator",),
        const SizedBox(height: dWh10x,),
        const RelatedMovies()
      ],
    );
  }
}

