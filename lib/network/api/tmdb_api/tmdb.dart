import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:soul_king_domn/constant/api_constant.dart';
import 'package:soul_king_domn/network/response/movie_response/movie_response.dart';
part 'tmdb.g.dart';
@RestApi(baseUrl: kMovieBaseUrl)
abstract class TheMovieDBAPI{
  factory TheMovieDBAPI(Dio dio)= _TheMovieDBAPI;
  @GET(kMovieEndPoint)
  Future<MovieResponse> getAllMovies(
      @Query(kApiKey) String? apikey,
      @Query(kPages) int? page,
  );
}