import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class EasyCachedImage extends StatelessWidget {
  const EasyCachedImage({Key? key,required this.imgUrl,required this.height,required this.width}) : super(key: key);
  final String imgUrl;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return  CachedNetworkImage(
      width: width,
      height: height,
      fit: BoxFit.cover,
      imageUrl: imgUrl,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),
      errorWidget: (context, url, error) => const Icon(Icons.error,color: Colors.red,),
    );
  }
}
