// import 'dart:convert';
// import 'dart:developer';

// import 'package:http/http.dart' as http;
// import 'package:mvvm_statemanagement/constants/api_constants.dart';

// class ApiService {
//   Future<void> fetchMovies({int page = 1}) async {
//     final url =
//         Uri.parse("${ApiConstants.baseUrl}movie/popular?language=en-US&page=1");
//     final response = http.get(url);
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       log("data $data");
//     } else {
//       throw Exception("Failed to load movies: ${response.statusCode}");
//     }
//     //movie/popular?language=en-US&page=1' \
//   }
// }

import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:mvvm_statemanagement/constants/api_constants.dart';

class ApiService {
  Future<void> fetchMovies({int page = 1}) async {
    final url =
        Uri.parse("${ApiConstants.baseUrl}movie/popular?language=en-US&page1");
    final response =
        await http.get(url, headers: ApiConstants.headers); // Added await here
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      log("Data: $data");
    } else {
      throw Exception("Failed to load movies: ${response.statusCode}");
    }
  }
}
