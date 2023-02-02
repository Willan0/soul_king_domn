import 'package:json_annotation/json_annotation.dart';

import '../../../datas/vos/movie_vo/movie_vo.dart';
part 'movie_response.g.dart';
@JsonSerializable()
class MovieResponse{
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<MovieVO>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResult;

  MovieResponse(this.page, this.results, this.totalPages, this.totalResult);
  factory MovieResponse.fromJson(Map<String,dynamic> json) => _$MovieResponseFromJson(json);

}