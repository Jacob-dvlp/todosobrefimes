import 'package:i_love_move/infra/models/api_response/response_move.dart';
import 'package:i_love_move/infra/repositorys/move_repository.dart';

class MoveProvider {
  final MoveRepository _moveRepository;

  MoveProvider(this._moveRepository);
  Future<List<Result>> getMove() async {
    return _moveRepository.getMovePopular();
  }
}
