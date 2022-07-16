import 'package:i_love_move/infra/models/api_response/response_tv.dart';

abstract class InterefaceTvRepository {
  Future<List<ResultTv>> getTv();
}
