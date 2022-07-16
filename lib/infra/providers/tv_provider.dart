import 'package:i_love_move/infra/models/api_response/response_tv.dart';
import 'package:i_love_move/infra/repositorys/tv_repository.dart';

class TvProvider {
  final TvRepository _repository;

  TvProvider(this._repository);

  Future<List<ResultTv>> getTv() async {
    return _repository.getTv();
  }
}
