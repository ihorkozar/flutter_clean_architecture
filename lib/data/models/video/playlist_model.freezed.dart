// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaylistModel _$PlaylistModelFromJson(Map<String, dynamic> json) {
  return _PlaylistModel.fromJson(json);
}

/// @nodoc
class _$PlaylistModelTearOff {
  const _$PlaylistModelTearOff();

  _PlaylistModel call(
      {required String? id,
      required String? title,
      required String? image,
      required String? description}) {
    return _PlaylistModel(
      id: id,
      title: title,
      image: image,
      description: description,
    );
  }

  PlaylistModel fromJson(Map<String, Object?> json) {
    return PlaylistModel.fromJson(json);
  }
}

/// @nodoc
const $PlaylistModel = _$PlaylistModelTearOff();

/// @nodoc
mixin _$PlaylistModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistModelCopyWith<PlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistModelCopyWith<$Res> {
  factory $PlaylistModelCopyWith(
          PlaylistModel value, $Res Function(PlaylistModel) then) =
      _$PlaylistModelCopyWithImpl<$Res>;
  $Res call({String? id, String? title, String? image, String? description});
}

/// @nodoc
class _$PlaylistModelCopyWithImpl<$Res>
    implements $PlaylistModelCopyWith<$Res> {
  _$PlaylistModelCopyWithImpl(this._value, this._then);

  final PlaylistModel _value;
  // ignore: unused_field
  final $Res Function(PlaylistModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PlaylistModelCopyWith<$Res>
    implements $PlaylistModelCopyWith<$Res> {
  factory _$PlaylistModelCopyWith(
          _PlaylistModel value, $Res Function(_PlaylistModel) then) =
      __$PlaylistModelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? title, String? image, String? description});
}

/// @nodoc
class __$PlaylistModelCopyWithImpl<$Res>
    extends _$PlaylistModelCopyWithImpl<$Res>
    implements _$PlaylistModelCopyWith<$Res> {
  __$PlaylistModelCopyWithImpl(
      _PlaylistModel _value, $Res Function(_PlaylistModel) _then)
      : super(_value, (v) => _then(v as _PlaylistModel));

  @override
  _PlaylistModel get _value => super._value as _PlaylistModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_PlaylistModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistModel implements _PlaylistModel {
  const _$_PlaylistModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.description});

  factory _$_PlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? description;

  @override
  String toString() {
    return 'PlaylistModel(id: $id, title: $title, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaylistModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$PlaylistModelCopyWith<_PlaylistModel> get copyWith =>
      __$PlaylistModelCopyWithImpl<_PlaylistModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaylistModelToJson(this);
  }
}

abstract class _PlaylistModel implements PlaylistModel {
  const factory _PlaylistModel(
      {required String? id,
      required String? title,
      required String? image,
      required String? description}) = _$_PlaylistModel;

  factory _PlaylistModel.fromJson(Map<String, dynamic> json) =
      _$_PlaylistModel.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$PlaylistModelCopyWith<_PlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}
