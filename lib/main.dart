import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:soul_king_domn/constant/api_constant.dart';
import 'package:soul_king_domn/network/api/tmdb_api/tmdb.dart';
import 'package:soul_king_domn/pages/home_page.dart';

void main(){
  runApp(const MyApp());
  TheMovieDBAPI theMovieDBAPI = TheMovieDBAPI(Dio());
  theMovieDBAPI.getAllMovies(kApiToken, 1).then((value) {
   print("Success value is $value");
  }).catchError((error)=> print(error));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

