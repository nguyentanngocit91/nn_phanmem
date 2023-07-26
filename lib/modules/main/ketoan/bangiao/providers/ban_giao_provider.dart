import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/ban_giao_model.dart';
import '../repositories/ban_giao_repository.dart';
import 'ban_giao_state.dart';

final banGiaoProvider = NotifierProvider<BanGiaoNotifier, BanGiaoState>(() {
  return BanGiaoNotifier();
});

class BanGiaoNotifier extends Notifier<BanGiaoState> {
  final BanGiaoRepository _banGiaoRepository = BanGiaoRepository();

  @override
  BanGiaoState build() {
    return BanGiaoState();
  }

  void setInputMaHD({required String? maHD}){

    print(maHD);
    if(maHD!=null) {
      print('ok set');
      state = state.copyWith(maHD: maHD);
    }
    print(state.maHD);
  }

  Future<void> actionInputSearch() async {
    var soHD = state.maHD;
    var listHD = state.listHD;
    if(soHD!= null ) {

      var temp = await getListHopDong(soHD: soHD);
      if(temp!=null) {
        listHD = temp;
      }
    }

    state = state.copyWith(listHD: listHD);

  }
  Future<List<BanGiaoModel>?> getListHopDong({required String soHD}) async {
    final List<BanGiaoModel> list = [];
    final response = await _banGiaoRepository.getListHopDongBySoHD(soHD: soHD);
    if(response!=null){
      for (var json in response['data']) {
        list.add(BanGiaoModel.fromJson(json));
      }
      return list;
    }
    return null;
  }
}
