// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
mixin _$Downloads {
// ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res, Downloads>;
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res, $Val extends Downloads>
    implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsImplCopyWith<$Res>
    implements $DownloadsCopyWith<$Res> {
  factory _$$DownloadsImplCopyWith(
          _$DownloadsImpl value, $Res Function(_$DownloadsImpl) then) =
      __$$DownloadsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$DownloadsImplCopyWithImpl<$Res>
    extends _$DownloadsCopyWithImpl<$Res, _$DownloadsImpl>
    implements _$$DownloadsImplCopyWith<$Res> {
  __$$DownloadsImplCopyWithImpl(
      _$DownloadsImpl _value, $Res Function(_$DownloadsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$DownloadsImpl(
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadsImpl implements _Downloads {
  const _$DownloadsImpl(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$DownloadsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadsImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsImpl &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      __$$DownloadsImplCopyWithImpl<_$DownloadsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadsImplToJson(
      this,
    );
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$DownloadsImpl;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$DownloadsImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsImplCopyWith<_$DownloadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
