
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_contract_search_result_model.freezed.dart';
part 'item_contract_search_result_model.g.dart';

// **************************************************************************
// Đây là nội dung được tạo tự động bằng NextDEV Tool
// Đề nghị không chỉnh sửa nội dung file này
// Hãy đảm bảo các gói này được thêm vào file pubspec.yaml
// dependencies:
// 	freezed_annotation: <lastest_version>
// 	json_annotation: <lastest_version>
// dev_dependencies:
// 	build_runner: <lastest_version>
// 	freezed: <lastest_version>
// 	json_serializable: <lastest_version>
// Bằng câu lệnh :
// 	flutter pub add freezed_annotation json_annotation
// 	flutter pub add build_runner freezed json_serializable --dev
// Chạy câu lệnh sau để build file freezed:
// 	flutter pub run build_runner build
// Version : 1.0.1 Beta
// **************************************************************************

@freezed
class ItemContractSearchResultModel with _$ItemContractSearchResultModel {
  const factory ItemContractSearchResultModel({
    List<dynamic>? dichvuIds,
    String? info,
    List<dynamic>? lichsu_thanhtoan,
    @JsonKey(name: '_id') @required String? id,
    int? sohopdong,
    String? namhopdong,
    String? loaihopdong,
    String? mahopdongcu,
    String? mahopdong,
    List<dynamic>? nhanvien,
    @JsonKey(name: 'khachhangId') L1_khachhangId? l1_khachhangId,
    String? tenhopdong,
    @JsonKey(name: 'lichsu_khoitao') L1_lichsu_khoitao? l1_lichsu_khoitao,
    int? tongtien,
    List<dynamic>? lichsu_capnhat}) = _ItemContractSearchResultModel;

  factory ItemContractSearchResultModel.fromJson(Map<String, dynamic> json) => _$ItemContractSearchResultModelFromJson(json);
}

@freezed
class L1_khachhangId with _$L1_khachhangId {
  const factory L1_khachhangId({
    @JsonKey(name: '_id') @required String? id,
    String? makhachhang}) = _L1_khachhangId;

  factory L1_khachhangId.fromJson(Map<String, dynamic> json) => _$L1_khachhangIdFromJson(json);
}

@freezed
class L1_lichsu_khoitao with _$L1_lichsu_khoitao {
  const factory L1_lichsu_khoitao({
    @JsonKey(name: '_id') @required String? id,
    String? parentId,
    String? manhanvien,
    String? hoten,
    @JsonKey(name: 'phongbanId') L2_phongbanId? l2_phongbanId}) = _L1_lichsu_khoitao;

  factory L1_lichsu_khoitao.fromJson(Map<String, dynamic> json) => _$L1_lichsu_khoitaoFromJson(json);
}

@freezed
class L2_phongbanId with _$L2_phongbanId {
  const factory L2_phongbanId({
    @JsonKey(name: '_id') @required String? id,
    String? maphongban,
    String? manhanh,
    String? tenphongban}) = _L2_phongbanId;

  factory L2_phongbanId.fromJson(Map<String, dynamic> json) => _$L2_phongbanIdFromJson(json);
}
