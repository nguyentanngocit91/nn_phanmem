
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'infocontractresponse_model.freezed.dart';
part 'infocontractresponse_model.g.dart';

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
class InfoContractResponseModel with _$InfoContractResponseModel {
	const factory InfoContractResponseModel({ 
		int? countActivated,
		int? countTrashed,
		int? total,
		int? limit,
		int? page,
		int? lastPage}) = _InfoContractResponseModel;

	factory InfoContractResponseModel.fromJson(Map<String, dynamic> json) => _$InfoContractResponseModelFromJson(json);
}
