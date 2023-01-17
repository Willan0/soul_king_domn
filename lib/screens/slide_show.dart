import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:soul_king_domn/constant/colors.dart';
import '../constant/dimens.dart';
import '../datas/datas.dart';
import '../widgets/movies_slide.dart';

class SlideShow extends StatelessWidget {
  SlideShow({Key? key}) : super(key: key);
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: dWh280x,
      child: Column(
        children: [
          SizedBox(height: dWh250x,
           child: PageView.builder(
             controller: _controller,
             itemCount: movies.length,
             itemBuilder: (context, index) {
            return MovieSlide(imgUrl: movies[index].imgUrl, name: movies[index].name);
          },),
          ),
          SmoothPageIndicator(
              controller: _controller,
              count: movies.length,
            effect: const SwapEffect(
              dotWidth: dWh10x,
              dotHeight: dWh10x,
              dotColor: cShadow,
              activeDotColor: cAmber
            ),
          )
        ],
      ),
    );
}}
