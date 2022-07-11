import 'package:http/http.dart' as http;
import 'package:i_love_move/infra/app_util/urls_api.dart';
import 'package:i_love_move/infra/interface/interface_move_repository.dart';
import 'package:i_love_move/infra/models/response_move.dart';

class MoveRepository extends InterfaceMoveRepository {
  List<Result> responseModel = [];
  @override
  Future<List<Result>> getMovePopular() async {
    final response = await http.get(Uri.parse(BaseURL.popularUrl),
        headers: ApiUtils.headers);
    if (response.statusCode == 200) {
      String convertJson = response.body;
      final model = responseModelMoveFromJson(convertJson);
      responseModel = model.results!;
      print(responseModel);
    }
    return responseModel;
  }
}
