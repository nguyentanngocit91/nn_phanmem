// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileModel _$$_FileModelFromJson(Map<String, dynamic> json) => _$_FileModel(
      l1_lichsu_khoitao: json['lichsu_khoitao'] == null
          ? null
          : L1_lichsu_khoitao.fromJson(
              json['lichsu_khoitao'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      folderId: json['folderId'] as String?,
      sohopdong: json['sohopdong'] as String?,
      khachhangId: json['khachhangId'] as String?,
      loaifile: json['loaifile'] as String?,
      loaimedia: json['loaimedia'] as String?,
      ghichu: json['ghichu'] as String?,
      originalname: json['originalname'] as String?,
      filename: json['filename'] as String?,
      path: json['path'] as String?,
      destination: json['destination'] as String?,
      size: json['size'] as int?,
      folder: json['folder'] as String?,
      mimetype: json['mimetype'] as String?,
      ext: json['ext'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FileModelToJson(_$_FileModel instance) =>
    <String, dynamic>{
      'lichsu_khoitao': instance.l1_lichsu_khoitao,
      '_id': instance.id,
      'folderId': instance.folderId,
      'sohopdong': instance.sohopdong,
      'khachhangId': instance.khachhangId,
      'loaifile': instance.loaifile,
      'loaimedia': instance.loaimedia,
      'ghichu': instance.ghichu,
      'originalname': instance.originalname,
      'filename': instance.filename,
      'path': instance.path,
      'destination': instance.destination,
      'size': instance.size,
      'folder': instance.folder,
      'mimetype': instance.mimetype,
      'ext': instance.ext,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_L1_lichsu_khoitao _$$_L1_lichsu_khoitaoFromJson(Map<String, dynamic> json) =>
    _$_L1_lichsu_khoitao(
      l2_parentId: json['parentId'] == null
          ? null
          : L2_parentId.fromJson(json['parentId'] as Map<String, dynamic>),
      l2_phongbanId: json['phongbanId'] == null
          ? null
          : L2_phongbanId.fromJson(json['phongbanId'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      manhanvien: json['manhanvien'] as String?,
      hoten: json['hoten'] as String?,
    );

Map<String, dynamic> _$$_L1_lichsu_khoitaoToJson(
        _$_L1_lichsu_khoitao instance) =>
    <String, dynamic>{
      'parentId': instance.l2_parentId,
      'phongbanId': instance.l2_phongbanId,
      '_id': instance.id,
      'manhanvien': instance.manhanvien,
      'hoten': instance.hoten,
    };

_$_L2_parentId _$$_L2_parentIdFromJson(Map<String, dynamic> json) =>
    _$_L2_parentId(
      id: json['_id'] as String?,
      manhanvien: json['manhanvien'] as String?,
      hoten: json['hoten'] as String?,
    );

Map<String, dynamic> _$$_L2_parentIdToJson(_$_L2_parentId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'manhanvien': instance.manhanvien,
      'hoten': instance.hoten,
    };

_$_L2_phongbanId _$$_L2_phongbanIdFromJson(Map<String, dynamic> json) =>
    _$_L2_phongbanId(
      id: json['_id'] as String?,
      maphongban: json['maphongban'] as String?,
      manhanh: json['manhanh'] as String?,
      tenphongban: json['tenphongban'] as String?,
    );

Map<String, dynamic> _$$_L2_phongbanIdToJson(_$_L2_phongbanId instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'maphongban': instance.maphongban,
      'manhanh': instance.manhanh,
      'tenphongban': instance.tenphongban,
    };