import 'package:mvvm_statemanagement/models/movies_genre.dart';
import 'package:mvvm_statemanagement/models/movies_model.dart';
import 'package:mvvm_statemanagement/service/api_service.dart';

class MoviesRepository {
  final ApiService _apiService;
  MoviesRepository(this._apiService);
  Future<List<MoviesModel>> fetchMovies({int page = 1}) async {
    return await _apiService.fetchMovies(page: page);
  }

  Future<List<MoviesGenre>> fetchGenres() async {
    return await _apiService.fetchGenres();
  }
}