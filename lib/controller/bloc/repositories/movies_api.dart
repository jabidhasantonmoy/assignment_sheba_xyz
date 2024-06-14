import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../model/movies_model.dart';
import '../../utils/api_urls.dart';

class MoviesApi {
  static Future<MoviesModel?> getMoviesResponse() async {
    try {
      var response = await http.get(Uri.parse(ApiUrl.baseUrl), headers: {
        "accept": "application/json",
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMWQxMDdlZDk3Mjc2M2FlNWFhZWVhNjhmOGE5MGIxYiIsInN1YiI6IjY2NmM3MzhlM2ZhYTdlMmRhZDJkMDZkYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ._arzyctiSSAEsFmGX_r4ZFuq3-7ioNk_WhZuqeLZNsw"
      });
      if (response.statusCode == 200) {
        MoviesModel moviesModel =
            MoviesModel.fromJson(jsonDecode(response.body));
        return moviesModel;
      }
      return null;
    } catch (error) {
      throw 'getMoviesResponse: $error';
    }
  }
}
