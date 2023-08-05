import 'package:dio/dio.dart';

import '../../../../../../_shared/app_config/app.dart';
import '../../../../../../_shared/thietlap_url.dart';



class Data20152019Repository {
  Future<Map?> searchListData20152019({String soPhieuThu = '', String soHD = '', String tuNgay = '', String denNgay = ''}) async {
    String strSearchSoPhieuThu = (soPhieuThu!='')?'&maphieuthu=$soPhieuThu':'';
    String strSearchSoHopDong = (soHD!='')?'&sohopdong=$soHD':'';
    String strSearchTuNgay = (tuNgay!='')?'&tungay=$tuNgay':'';
    String strSearchDenNgay = (denNgay!='')?'&denngay=$denNgay':'';
    print('${ApiUrl.danhSachPhieuThu}?$strSearchSoPhieuThu$strSearchSoHopDong$strSearchTuNgay$strSearchDenNgay');

    final Response response = await App.dioClient.get('${ApiUrl.danhSachPhieuThu}?$strSearchSoPhieuThu$strSearchSoHopDong$strSearchTuNgay$strSearchDenNgay');
    if(response.statusCode==200){
      if(response.data['success']==true){
        return response.data;
      }
    }
    return null;
  }
}