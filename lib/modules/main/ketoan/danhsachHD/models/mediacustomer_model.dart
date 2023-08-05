
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mediacustomer_model.freezed.dart';
part 'mediacustomer_model.g.dart';

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
class MediaCustomerModel with _$MediaCustomerModel {
	const factory MediaCustomerModel({ 
		@JsonKey(name: '_id') @required String? id,
		String? folderId,
		String? sohopdong,
		String? hopdongId,
		String? makhachhang,
		String? khachhangId,
		String? loaifile,
		String? loaimedia,
		String? ghichu,
		String? originalname,
		String? filename,
		String? path,
		String? destination,
		int? size,
		String? folder,
		String? mimetype,
		String? ext,
		@JsonKey(name: 'lichsu_khoitao') L1_lichsu_khoitao? l1_lichsu_khoitao,
		List<dynamic>? lichsu_capnhat,
		String? createdAt,
		String? updatedAt}) = _MediaCustomerModel;

	factory MediaCustomerModel.fromJson(Map<String, dynamic> json) => _$MediaCustomerModelFromJson(json);
}

@freezed
class L1_lichsu_khoitao with _$L1_lichsu_khoitao {
	const factory L1_lichsu_khoitao({ 
		@JsonKey(name: '_id') @required String? id,
		String? parentId,
		String? manhanvien,
		String? hoten,
		String? phongbanId,
		String? ngaykhoitao}) = _L1_lichsu_khoitao;

	factory L1_lichsu_khoitao.fromJson(Map<String, dynamic> json) => _$L1_lichsu_khoitaoFromJson(json);
}
