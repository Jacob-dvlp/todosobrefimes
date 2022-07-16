import 'package:http/http.dart' as http;
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/models/api_response/response_tv.dart';

class TvRepository {
  List<ResultTv> responseModel = [];
  Future<List<ResultTv>> getTv() async {
    final response =
        await http.get(Uri.parse(BaseURL.tvUrl), headers: ApiUtils.headers);
    if (response.statusCode == 200) {
      String convertJson = response.body;
      final model = responseModelTvFromJson(convertJson);
      responseModel = model.results!;
      print(responseModel);
    }
    return responseModel;
  }
}
