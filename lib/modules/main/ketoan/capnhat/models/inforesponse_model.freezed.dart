// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inforesponse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoResponseModel _$InfoResponseModelFromJson(Map<String, dynamic> json) {
  return _InfoResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InfoResponseModel {
  int? get countActivated => throw _privateConstructorUsedError;
  int? get countTrashed => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoResponseModelCopyWith<InfoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoResponseModelCopyWith<$Res> {
  factory $InfoResponseModelCopyWith(
          InfoResponseModel value, $Res Function(InfoResponseModel) then) =
      _$InfoResponseModelCopyWithImpl<$Res, InfoResponseModel>;
  @useResult
  $Res call(
      {int? countActivated,
      int? countTrashed,
      int? total,
      int? limit,
      int? page,
      int? lastPage});
}

/// @nodoc
class _$InfoResponseModelCopyWithImpl<$Res, $Val extends InfoResponseModel>
    implements $InfoResponseModelCopyWith<$Res> {
  _$InfoResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countActivated = freezed,
    Object? countTrashed = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      countActivated: freezed == countActivated
          ? _value.countActivated
          : countActivated // ignore: cast_nullable_to_non_nullable
              as int?,
      countTrashed: freezed == countTrashed
          ? _value.countTrashed
          : countTrashed // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoResponseModelCopyWith<$Res>
    implements $InfoResponseModelCopyWith<$Res> {
  factory _$$_InfoResponseModelCopyWith(_$_InfoResponseModel value,
          $Res Function(_$_InfoResponseModel) then) =
      __$$_InfoResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? countActivated,
      int? countTrashed,
      int? total,
      int? limit,
      int? page,
      int? lastPage});
}

/// @nodoc
class __$$_InfoResponseModelCopyWithImpl<$Res>
    extends _$InfoResponseModelCopyWithImpl<$Res, _$_InfoResponseModel>
    implements _$$_InfoResponseModelCopyWith<$Res> {
  __$$_InfoResponseModelCopyWithImpl(
      _$_InfoResponseModel _value, $Res Function(_$_InfoResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countActivated = freezed,
    Object? countTrashed = freezed,
    Object? total = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_$_InfoResponseModel(
      countActivated: freezed == countActivated
          ? _value.countActivated
          : countActivated // ignore: cast_nullable_to_non_nullable
              as int?,
      countTrashed: freezed == countTrashed
          ? _value.countTrashed
          : countTrashed // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoResponseModel
    with DiagnosticableTreeMixin
    implements _InfoResponseModel {
  const _$_InfoResponseModel(
      {this.countActivated,
      this.countTrashed,
      this.total,
      this.limit,
      this.page,
      this.lastPage});

  factory _$_InfoResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfoResponseModelFromJson(json);

  @override
  final int? countActivated;
  @override
  final int? countTrashed;
  @override
  final int? total;
  @override
  final int? limit;
  @override
  final int? page;
  @override
  final int? lastPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InfoResponseModel(countActivated: $countActivated, countTrashed: $countTrashed, total: $total, limit: $limit, page: $page, lastPage: $lastPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InfoResponseModel'))
      ..add(DiagnosticsProperty('countActivated', countActivated))
      ..add(DiagnosticsProperty('countTrashed', countTrashed))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('limit', limit))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('lastPage', lastPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoResponseModel &&
            (identical(other.countActivated, countActivated) ||
                other.countActivated == countActivated) &&
            (identical(other.countTrashed, countTrashed) ||
                other.countTrashed == countTrashed) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, countActivated, countTrashed, total, limit, page, lastPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoResponseModelCopyWith<_$_InfoResponseModel> get copyWith =>
      __$$_InfoResponseModelCopyWithImpl<_$_InfoResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoResponseModelToJson(
      this,
    );
  }
}

abstract class _InfoResponseModel implements InfoResponseModel {
  const factory _InfoResponseModel(
      {final int? countActivated,
      final int? countTrashed,
      final int? total,
      final int? limit,
      final int? page,
      final int? lastPage}) = _$_InfoResponseModel;

  factory _InfoResponseModel.fromJson(Map<String, dynamic> json) =
      _$_InfoResponseModel.fromJson;

  @override
  int? get countActivated;
  @override
  int? get countTrashed;
  @override
  int? get total;
  @override
  int? get limit;
  @override
  int? get page;
  @override
  int? get lastPage;
  @override
  @JsonKey(ignore: true)
  _$$_InfoResponseModelCopyWith<_$_InfoResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}