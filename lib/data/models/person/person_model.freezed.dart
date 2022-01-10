// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
class _$PersonModelTearOff {
  const _$PersonModelTearOff();

  _PersonModel call(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required LocationModel origin,
      required LocationModel location,
      required String image,
      required List<String> episode,
      required DateTime created}) {
    return _PersonModel(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin,
      location: location,
      image: image,
      episode: episode,
      created: created,
    );
  }

  PersonModel fromJson(Map<String, Object?> json) {
    return PersonModel.fromJson(json);
  }
}

/// @nodoc
const $PersonModel = _$PersonModelTearOff();

/// @nodoc
mixin _$PersonModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  LocationModel get origin => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      LocationModel origin,
      LocationModel location,
      String image,
      List<String> episode,
      DateTime created});

  $LocationModelCopyWith<$Res> get origin;
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res> implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  final PersonModel _value;
  // ignore: unused_field
  final $Res Function(PersonModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get origin {
    return $LocationModelCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value));
    });
  }

  @override
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$PersonModelCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$PersonModelCopyWith(
          _PersonModel value, $Res Function(_PersonModel) then) =
      __$PersonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      LocationModel origin,
      LocationModel location,
      String image,
      List<String> episode,
      DateTime created});

  @override
  $LocationModelCopyWith<$Res> get origin;
  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$PersonModelCopyWithImpl<$Res> extends _$PersonModelCopyWithImpl<$Res>
    implements _$PersonModelCopyWith<$Res> {
  __$PersonModelCopyWithImpl(
      _PersonModel _value, $Res Function(_PersonModel) _then)
      : super(_value, (v) => _then(v as _PersonModel));

  @override
  _PersonModel get _value => super._value as _PersonModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
    Object? created = freezed,
  }) {
    return _then(_PersonModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: species == freezed
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: episode == freezed
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonModel implements _PersonModel {
  const _$_PersonModel(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required this.episode,
      required this.created});

  factory _$_PersonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonModelFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String type;
  @override
  final String gender;
  @override
  final LocationModel origin;
  @override
  final LocationModel location;
  @override
  final String image;
  @override
  final List<String> episode;
  @override
  final DateTime created;

  @override
  String toString() {
    return 'PersonModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PersonModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.episode, episode) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(episode),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$PersonModelCopyWith<_PersonModel> get copyWith =>
      __$PersonModelCopyWithImpl<_PersonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonModelToJson(this);
  }
}

abstract class _PersonModel implements PersonModel {
  const factory _PersonModel(
      {required int id,
      required String name,
      required String status,
      required String species,
      required String type,
      required String gender,
      required LocationModel origin,
      required LocationModel location,
      required String image,
      required List<String> episode,
      required DateTime created}) = _$_PersonModel;

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$_PersonModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get type;
  @override
  String get gender;
  @override
  LocationModel get origin;
  @override
  LocationModel get location;
  @override
  String get image;
  @override
  List<String> get episode;
  @override
  DateTime get created;
  @override
  @JsonKey(ignore: true)
  _$PersonModelCopyWith<_PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
