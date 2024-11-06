import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mvvm_statemanagement/constants/api_constants.dart';
import 'package:mvvm_statemanagement/models/movies_genre.dart';
import 'package:mvvm_statemanagement/models/movies_model.dart';

class ApiService {
  Future<List<MoviesModel>> fetchMovies({int page = 1}) async {
    final url =
        Uri.parse("${ApiConstants.baseUrl}movie/popular?language=en-US&page1");
    final response =
        await http.get(url, headers: ApiConstants.headers); // Added await here
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log("Data: $data");
      return List.from(
          data['results'].map((element) => MoviesModel.fromJson(element)));
    } else {
      throw Exception("Failed to load movies: ${response.statusCode}");
    }
  }

  Future<List<MoviesGenre>> fetchGenres() async {
    final url =
        Uri.parse("${ApiConstants.baseUrl}genre/movie/list?language=en");
    final response = await http.get(url, headers: ApiConstants.headers);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log("Data: $data");
      return List.from(
          data['genres'].map((element) => MoviesGenre.fromJson(element)));
    } else {
      throw Exception("Failed to load movies: ${response.statusCode}");
    }
  }
}
