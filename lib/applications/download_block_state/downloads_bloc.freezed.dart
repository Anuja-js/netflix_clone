// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImages value)? getDownloadImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownloadImagesImplCopyWith<$Res> {
  factory _$$GetDownloadImagesImplCopyWith(_$GetDownloadImagesImpl value,
          $Res Function(_$GetDownloadImagesImpl) then) =
      __$$GetDownloadImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownloadImagesImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownloadImagesImpl>
    implements _$$GetDownloadImagesImplCopyWith<$Res> {
  __$$GetDownloadImagesImplCopyWithImpl(_$GetDownloadImagesImpl _value,
      $Res Function(_$GetDownloadImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownloadImagesImpl implements _GetDownloadImages {
  const _$GetDownloadImagesImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownloadImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImages,
  }) {
    return getDownloadImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImages,
  }) {
    return getDownloadImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadImages,
  }) {
    return getDownloadImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImages value)? getDownloadImages,
  }) {
    return getDownloadImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadImages,
    required TResult orElse(),
  }) {
    if (getDownloadImages != null) {
      return getDownloadImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImages implements DownloadsEvent {
  const factory _GetDownloadImages() = _$GetDownloadImagesImpl;
}

/// @nodoc
mixin _$Downloadstate {
  Option<Either<DownloadsFail, List<Downloads>>>
      get downloadsFailureOrSuccesOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads>? get downloads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadstateCopyWith<Downloadstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadstateCopyWith<$Res> {
  factory $DownloadstateCopyWith(
          Downloadstate value, $Res Function(Downloadstate) then) =
      _$DownloadstateCopyWithImpl<$Res, Downloadstate>;
  @useResult
  $Res call(
      {Option<Either<DownloadsFail, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      bool isLoading,
      List<Downloads>? downloads});
}

/// @nodoc
class _$DownloadstateCopyWithImpl<$Res, $Val extends Downloadstate>
    implements $DownloadstateCopyWith<$Res> {
  _$DownloadstateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadsFailureOrSuccesOption = null,
    Object? isLoading = null,
    Object? downloads = freezed,
  }) {
    return _then(_value.copyWith(
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DownloadsFail, List<Downloads>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadstateImplCopyWith<$Res>
    implements $DownloadstateCopyWith<$Res> {
  factory _$$DownloadstateImplCopyWith(
          _$DownloadstateImpl value, $Res Function(_$DownloadstateImpl) then) =
      __$$DownloadstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<DownloadsFail, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      bool isLoading,
      List<Downloads>? downloads});
}

/// @nodoc
class __$$DownloadstateImplCopyWithImpl<$Res>
    extends _$DownloadstateCopyWithImpl<$Res, _$DownloadstateImpl>
    implements _$$DownloadstateImplCopyWith<$Res> {
  __$$DownloadstateImplCopyWithImpl(
      _$DownloadstateImpl _value, $Res Function(_$DownloadstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadsFailureOrSuccesOption = null,
    Object? isLoading = null,
    Object? downloads = freezed,
  }) {
    return _then(_$DownloadstateImpl(
      downloadsFailureOrSuccesOption: null == downloadsFailureOrSuccesOption
          ? _value.downloadsFailureOrSuccesOption
          : downloadsFailureOrSuccesOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DownloadsFail, List<Downloads>>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: freezed == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>?,
    ));
  }
}

/// @nodoc

class _$DownloadstateImpl implements _Downloadstate {
  const _$DownloadstateImpl(
      {required this.downloadsFailureOrSuccesOption,
      required this.isLoading,
      final List<Downloads>? downloads})
      : _downloads = downloads;

  @override
  final Option<Either<DownloadsFail, List<Downloads>>>
      downloadsFailureOrSuccesOption;
  @override
  final bool isLoading;
  final List<Downloads>? _downloads;
  @override
  List<Downloads>? get downloads {
    final value = _downloads;
    if (value == null) return null;
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Downloadstate(downloadsFailureOrSuccesOption: $downloadsFailureOrSuccesOption, isLoading: $isLoading, downloads: $downloads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadstateImpl &&
            (identical(other.downloadsFailureOrSuccesOption,
                    downloadsFailureOrSuccesOption) ||
                other.downloadsFailureOrSuccesOption ==
                    downloadsFailureOrSuccesOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads));
  }

  @override
  int get hashCode => Object.hash(runtimeType, downloadsFailureOrSuccesOption,
      isLoading, const DeepCollectionEquality().hash(_downloads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadstateImplCopyWith<_$DownloadstateImpl> get copyWith =>
      __$$DownloadstateImplCopyWithImpl<_$DownloadstateImpl>(this, _$identity);
}

abstract class _Downloadstate implements Downloadstate {
  const factory _Downloadstate(
      {required final Option<Either<DownloadsFail, List<Downloads>>>
          downloadsFailureOrSuccesOption,
      required final bool isLoading,
      final List<Downloads>? downloads}) = _$DownloadstateImpl;

  @override
  Option<Either<DownloadsFail, List<Downloads>>>
      get downloadsFailureOrSuccesOption;
  @override
  bool get isLoading;
  @override
  List<Downloads>? get downloads;
  @override
  @JsonKey(ignore: true)
  _$$DownloadstateImplCopyWith<_$DownloadstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}