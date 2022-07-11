import 'package:i_love_move/infra/models/response_move.dart';

abstract class InterfaceMoveRepository {
  Future<List<Result>> getMovePopular();
}
