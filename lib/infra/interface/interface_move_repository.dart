import 'package:i_love_move/infra/models/api_response/response_move.dart';

abstract class InterfaceMoveRepository {
  Future<List<Result>> getMovePopular();
}
