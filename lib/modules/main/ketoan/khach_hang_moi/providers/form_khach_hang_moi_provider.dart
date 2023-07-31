import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../_shared/extensions/date_time_extention.dart';
import '../../../../../_shared/utils/form_status.dart';
import '../repositories/khach_hang_moi_repository.dart';
import 'danh_sach_domain_provider.dart';
import 'kiem_tra_khach_hang_provider.dart';

part 'form_khach_hang_moi_state.dart';

final formKhachHangMoiProvider =
    NotifierProvider<FormKhachHangMoiNotifier, FormKhachHangMoiState>(() {
  return FormKhachHangMoiNotifier();
});

class FormKhachHangMoiNotifier extends Notifier<FormKhachHangMoiState> {
  final KhachHangMoiRepository _khachHangMoiRepository = KhachHangMoiRepository();

  @override
  FormKhachHangMoiState build() {
    init();
    return FormKhachHangMoiState();
  }

  init() async {
    await taoMaKhachHang();
    await taoMaHopDong();
  }

  batDatSubmit(){
    state = state.copyWith(formStatus: FormStatus.submissionInProgress);
  }

  ketThucSubmit(){
    state = state.copyWith(formStatus: FormStatus.submissionCanceled);
  }

  Future<String?> taoMaKhachHang() async {
    String? maKhachHang = await _khachHangMoiRepository.capMaKhachhang();
    maKhachHang = 'NN$maKhachHang${DateTime.now().formatDateTime('yy')}';
    state = state.copyWith(maKhachHang: maKhachHang);
  }

  Future<String?> taoMaHopDong() async {
    final maHopDong = await _khachHangMoiRepository.capMaHopDong();
    state = state.copyWith(maHopDong: maHopDong);
  }

  checkLoaiHopDong(
      {bool? isHopDongWebsite,
      bool? isHopDongApp,
      bool? isHopDongDomain,
      bool? isHopDongHosting}) {

    if(isHopDongApp==true){
      isHopDongWebsite = false;
      isHopDongDomain = false;
      isHopDongHosting = false;
    }

    if(isHopDongWebsite==true || isHopDongDomain==true || isHopDongHosting==true){
      isHopDongApp = false;
    }

    state = state.copyWith(
      isHopDongApp: isHopDongApp ?? state.isHopDongApp,
      isHopDongHosting: isHopDongHosting ?? state.isHopDongHosting,
      isHopDongDomain: isHopDongDomain ?? state.isHopDongDomain,
      isHopDongWebsite: isHopDongWebsite ?? state.isHopDongWebsite,
    );
  }

  changeData(
      {required String type, required String key, required dynamic value}) {
    switch(type){
      case 'khachhang':
        Map newDataKhachHang = state.dataKhachHang ?? {};
        newDataKhachHang.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataKhachHang: newDataKhachHang);
      case 'hopdong':
        Map newDataHopDong = state.dataHopDong ?? {};
        newDataHopDong.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataHopDong: newDataHopDong);
      case 'phieuthu':
        Map newDataPhieuThu = state.dataPhieuThu ?? {};
        newDataPhieuThu.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataPhieuThu: newDataPhieuThu);
      case 'website':
        Map newDataWebsite = state.dataWebsite ?? {};
        newDataWebsite.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataWebsite: newDataWebsite);
      case 'domain':
        Map newDataDomain = state.dataDomain ?? {};
        newDataDomain.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataDomain: newDataDomain);
      case 'hosting':
        Map newDataHosting = state.dataHosting ?? {};
        newDataHosting.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataHosting: newDataHosting);
      case 'app':
        Map newDataApp = state.dataApp ?? {};
        newDataApp.update(key, (item) => value, ifAbsent: () => value);
        state = state.copyWith(dataApp: newDataApp);
    }
  }

  saveForm() async{
    state = state.copyWith(formStatus: FormStatus.submissionInProgress);
    await saveKhachHang();
    await saveHopDong();
    await savePhieuThu();
    await saveWebsite();
    await saveDomain();
    await saveHosting();
    await saveApp();
    state = state.copyWith(formStatus: FormStatus.submissionSuccess);
    print('submit done!');
  }

  saveKhachHang() async{
    if (state.dataKhachHang != null) {
      state.dataKhachHang!.forEach((key, value) {
        print('Khách hàng {$key:$value}');
      });
    }
  }

  saveHopDong() async{
    if (state.dataHopDong != null) {
      state.dataHopDong!.forEach((key, value) {
        print('Hợp đồng {$key:$value}');
      });
    }
  }

  savePhieuThu() async{
    if (state.dataPhieuThu != null) {
      state.dataPhieuThu!.forEach((key, value) {
        print('Phiếu thu {$key:$value}');
      });
    }
  }

  saveWebsite() async{
    if (state.dataWebsite != null) {
      state.dataWebsite!.forEach((key, value) {
        print('Website {$key:$value}');
      });
    }
  }

  saveHosting() async{
    if (state.dataHosting != null) {
      state.dataHosting!.forEach((key, value) {
        print('Hosting {$key:$value}');
      });
    }
  }

  saveDomain() async{
    if (state.dataDomain != null) {
      state.dataDomain!.forEach((key, value) {
        print('Domain {$key:$value}');
      });
    }
    final dsDomain = ref.read(danhSachDomainProvider);
    for(var item in dsDomain){
      print('${item.domainName}: ${item.ngayDangKy} - ${item.ngayHetHan} - ${item.ghiChu}');
    }
  }

  saveApp() async{
    if (state.dataApp != null) {
      state.dataApp!.forEach((key, value) {
        print('App {$key:$value}');
      });
    }
  }
}
