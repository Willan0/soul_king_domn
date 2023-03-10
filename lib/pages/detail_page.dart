import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/colors.dart';
import 'package:soul_king_domn/constant/dimens.dart';
import 'package:soul_king_domn/constant/string.dart';
import 'package:soul_king_domn/datas/datas.dart';
import 'package:soul_king_domn/widgets/actor_widget.dart';
import 'package:soul_king_domn/widgets/button_widget.dart';
import 'package:soul_king_domn/widgets/easy_cached_image.dart';
import 'package:soul_king_domn/widgets/easy_text.dart';
import 'package:soul_king_domn/widgets/rounded_container.dart';

import '../view_items/about_flim.dart';
import '../view_items/movie_details_title.dart';
import '../view_items/related_movies.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.imgUrl,
      required this.name,
      required this.generic,
      required this.country,
      required this.date,
      required this.description,
      required this.rating,
      required this.starCount})
      : super(key: key);
  final String imgUrl;
  final String name;
  final String generic;
  final String country;
  final String date;
  final String description;
  final String rating;
  final double starCount;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimaryColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBarItem(
            imgUrl: imgUrl,
            name: name,
            rating: rating,
            starCount: starCount,
          )
        ],
        body: DetailBody(
          name: name,
          generic: generic,
          country: country,
          date: date,
          description: description,
        ),
      ),
    );
  }
}

class SliverAppBarItem extends StatelessWidget {
  const SliverAppBarItem(
      {Key? key,
      required this.imgUrl,
      required this.name,
      required this.rating,
      required this.starCount})
      : super(key: key);

  final String imgUrl;
  final String name;
  final String rating;
  final double starCount;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: cPrimaryColor,
      expandedHeight: dWh280x,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(children: [
          Positioned(
            top: dMp20x,
            child: Row(
              children: [
                CircleAvatar(
                  radius: dR30x,
                  backgroundColor: cSecondaryShadow,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                ),
                const Icon(
                  Icons.search,
                  size: iconSize0,
                ),
                const SizedBox(
                  width: dMp20x,
                )
              ],
            ),
          ),
          EasyCachedImage(
              imgUrl: imgUrl, width: dWidth(context), height: dWh320x),
          Container(
              width: dWidth(context),
              height: dWh320x,
              foregroundDecoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      cSecondaryShadow,
                      Colors.transparent,
                      cPrimaryColor
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0, 1]),
              )),
          MovieDetailTitle(
            name: name,
            rating: rating,
            starCount: starCount,
          ),
        ]),
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody(
      {Key? key,
      required this.name,
      required this.generic,
      required this.country,
      required this.date,
      required this.description})
      : super(key: key);
  final String name;
  final String generic;
  final String country;
  final String date;
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
              const SizedBox(
                height: dWh20x,
              ),
              //Category
              Wrap(
                spacing: dMp10x,
                runSpacing: dMp5x,
                children: const [
                  Icon(
                    Icons.access_time,
                    color: cAmberShadow,
                  ),
                  EasyTextWidgets(data: '3hr 12min'),
                  RoundedContainer(
                    data: "Fiction",
                    checked: true,
                  ),
                  RoundedContainer(
                    data: "Adventure",
                    checked: true,
                  ),
                  RoundedContainer(
                    data: "Action",
                    checked: true,
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    size: iconSize2,
                    color: cW,
                  )
                ],
              ),
              const SizedBox(
                height: dWh10x,
              ),
              //story line
              const EasyTextWidgets(
                data: storyLine,
                color: cWShadow,
              ),
              const SizedBox(
                height: dWh10x,
              ),
              EasyTextWidgets(
                data: description,
                fontSize: fontSize0,
              ),
              const SizedBox(
                height: dWh10x,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ButtonWidget(icon: 'e4cc', label: "PLAY TRAILER"),
                  SizedBox(
                    width: dMp10x,
                  ),
                  ButtonWidget(
                    icon: 'e5f9',
                    label: "RATE MOVIE",
                    checked: true,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: dWh10x,
        ),
        ActorWidget(list: actorList, checked: true, title: "Actors", more: "_"),
        const SizedBox(
          height: dWh10x,
        ),
        AboutFilm(
          name: name,
          generic: generic,
          country: country,
          date: date,
          description: description,
        ),
        const SizedBox(
          height: dWh10x,
        ),
        ActorWidget(
          list: creatorList,
          title: "Creators",
          more: "More Creator",
        ),
        const SizedBox(
          height: dWh10x,
        ),
        const RelatedMovies()
      ],
    );
  }
}
