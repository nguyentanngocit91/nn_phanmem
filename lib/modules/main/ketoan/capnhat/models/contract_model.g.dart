// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractModel _$$_ContractModelFromJson(Map<String, dynamic> json) =>
    _$_ContractModel(
      l1_data: json['data'] == null
          ? null
          : L1_data.fromJson(json['data'] as Map<String, dynamic>),
      apps: json['apps'] as List<dynamic>?,
      webs: json['webs'] as List<dynamic>?,
      hostings: json['hostings'] as List<dynamic>?,
      domains: json['domains'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ContractModelToJson(_$_ContractModel instance) =>
    <String, dynamic>{
      'data': instance.l1_data,
      'apps': instance.apps,
      'webs': instance.webs,
      'hostings': instance.hostings,
      'domains': instance.domains,
    };

_$_L1_data _$$_L1_dataFromJson(Map<String, dynamic> json) => _$_L1_data(
      dichvuIds: json['dichvuIds'] as List<dynamic>?,
      lichsu_thanhtoan: json['lichsu_thanhtoan'] as List<dynamic>?,
      id: json['_id'] as String?,
      sohopdong: json['sohopdong'] as String?,
      namhopdong: json['namhopdong'] as String?,
      ngaykyhd: json['ngaykyhd'] as String?,
      loaihopdong: json['loaihopdong'] as String?,
      mahopdongcu: json['mahopdongcu'] as String?,
      mahopdong: json['mahopdong'] as String?,
      nhanvien: json['nhanvien'] as List<dynamic>?,
      ghichu: json['ghichu'] as String?,
      l2_info: json['info'] == null
          ? null
          : L2_info.fromJson(json['info'] as Map<String, dynamic>),
      khachhangId: json['khachhangId'] as String?,
      tenhopdong: json['tenhopdong'] as String?,
      l2_lichsu_khoitao: json['lichsu_khoitao'] == null
          ? null
          : L2_lichsu_khoitao.fromJson(
              json['lichsu_khoitao'] as Map<String, dynamic>),
      tongtien: json['tongtien'] as int?,
      lichsu_capnhat: json['lichsu_capnhat'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_L1_dataToJson(_$_L1_data instance) =>
    <String, dynamic>{
      'dichvuIds': instance.dichvuIds,
      'lichsu_thanhtoan': instance.lichsu_thanhtoan,
      '_id': instance.id,
      'sohopdong': instance.sohopdong,
      'namhopdong': instance.namhopdong,
      'ngaykyhd': instance.ngaykyhd,
      'loaihopdong': instance.loaihopdong,
      'mahopdongcu': instance.mahopdongcu,
      'mahopdong': instance.mahopdong,
      'nhanvien': instance.nhanvien,
      'ghichu': instance.ghichu,
      'info': instance.l2_info,
      'khachhangId': instance.khachhangId,
      'tenhopdong': instance.tenhopdong,
      'lichsu_khoitao': instance.l2_lichsu_khoitao,
      'tongtien': instance.tongtien,
      'lichsu_capnhat': instance.lichsu_capnhat,
    };

_$_L2_info _$$_L2_infoFromJson(Map<String, dynamic> json) => _$_L2_info(
      chucnang: json['chucnang'] as String?,
    );

Map<String, dynamic> _$$_L2_infoToJson(_$_L2_info instance) =>
    <String, dynamic>{
      'chucnang': instance.chucnang,
    };

_$_L2_lichsu_khoitao _$$_L2_lichsu_khoitaoFromJson(Map<String, dynamic> json) =>
    _$_L2_lichsu_khoitao(
      id: json['_id'] as String?,
      parentId: json['parentId'] as String?,
      manhanvien: json['manhanvien'] as String?,
      hoten: json['hoten'] as String?,
      l3_phongbanId: json['phongbanId'] == null
          ? null
          : L3_phongbanId.fromJson(json['phongbanId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_L2_lichsu_khoitaoToJson(
        _$_L2_lichsu_khoitao instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'parentId': instance.parentId,
      'manhanvien': instance.manhanvien,
      'hoten': instance.hoten,
      'phongbanId': instance.l3_phongbanId,
    };

_$_L3_phongbanId _$$_L3_phongbanIdFromJson(Map<String, dynamic> json) =>
    _$_L3_phongbanId(
      id: json['_id'] as String?,
      maphongban: json['maphongban'] as String?,
      manhanh: json['manhanh'] as String?,
      tenphongban: json['tenphongban'] as String?,
    );

Map<String, dynamic> _$$_L3_phongbanIdToJson(_$_L3_phongbanId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'maphongban': instance.maphongban,
      'manhanh': instance.manhanh,
      'tenphongban': instance.tenphongban,
    };