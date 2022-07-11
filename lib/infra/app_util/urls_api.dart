// import 'package:get_storage/get_storage.dart';

class ApiUtils {
  ApiUtils._();

  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}

class BaseURL {
  static const String img = "https://image.tmdb.org/t/p/original";
  static const String popularUrl =
      'https://api.themoviedb.org/3/tv/popular?api_key=ddd28b3f6572f3490ff09dafa7a41690&language=en-US&page=1';
}
