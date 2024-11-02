import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String apiKey = dotenv.get("MOVIES_API_KEY");
  static String bearerToken = dotenv.get('MOVIES_BEARERTOKEN');
  // "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNGYxMjQ5M2M2YmE0YWRmZTc4MTgzMzFiNGNiYWRiNSIsIm5iZiI6MTczMDQyMTAwNy42ODgwOTA2LCJzdWIiOiI2NzIwNDliYzRiZTE1NDY5ZTcwZTVlZWUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.NQKna8y1lYIXuJva79CCSQCbGH6FtmzKneAA6hc8nCk";
  static String baseUrl = 'https://api.themoviedb.org/3/';
  static Map<String, String> get headers => {
        'Authorization': 'Bearer $bearerToken',
        'accept': ' application/json',
      };
}
