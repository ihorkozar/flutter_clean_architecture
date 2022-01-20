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

  _PlaylistModel call({required String id, required SnippetModel snippet}) {
    return _PlaylistModel(
      id: id,
      snippet: snippet,
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
  String get id => throw _privateConstructorUsedError;
  SnippetModel get snippet => throw _privateConstructorUsedError;

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
  $Res call({String id, SnippetModel snippet});

  $SnippetModelCopyWith<$Res> get snippet;
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
    Object? snippet = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetModel,
    ));
  }

  @override
  $SnippetModelCopyWith<$Res> get snippet {
    return $SnippetModelCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value));
    });
  }
}

/// @nodoc
abstract class _$PlaylistModelCopyWith<$Res>
    implements $PlaylistModelCopyWith<$Res> {
  factory _$PlaylistModelCopyWith(
          _PlaylistModel value, $Res Function(_PlaylistModel) then) =
      __$PlaylistModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, SnippetModel snippet});

  @override
  $SnippetModelCopyWith<$Res> get snippet;
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
    Object? snippet = freezed,
  }) {
    return _then(_PlaylistModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as SnippetModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaylistModel implements _PlaylistModel {
  const _$_PlaylistModel({required this.id, required this.snippet});

  factory _$_PlaylistModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaylistModelFromJson(json);

  @override
  final String id;
  @override
  final SnippetModel snippet;

  @override
  String toString() {
    return 'PlaylistModel(id: $id, snippet: $snippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaylistModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.snippet, snippet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(snippet));

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
      {required String id, required SnippetModel snippet}) = _$_PlaylistModel;

  factory _PlaylistModel.fromJson(Map<String, dynamic> json) =
      _$_PlaylistModel.fromJson;

  @override
  String get id;
  @override
  SnippetModel get snippet;
  @override
  @JsonKey(ignore: true)
  _$PlaylistModelCopyWith<_PlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SnippetModel _$SnippetModelFromJson(Map<String, dynamic> json) {
  return _SnippetModel.fromJson(json);
}

/// @nodoc
class _$SnippetModelTearOff {
  const _$SnippetModelTearOff();

  _SnippetModel call(
      {required String title,
      required String description,
      required DateTime publishedAt,
      required Thumbnails thumbnails,
      required Localized localized,
      String? country}) {
    return _SnippetModel(
      title: title,
      description: description,
      publishedAt: publishedAt,
      thumbnails: thumbnails,
      localized: localized,
      country: country,
    );
  }

  SnippetModel fromJson(Map<String, Object?> json) {
    return SnippetModel.fromJson(json);
  }
}

/// @nodoc
const $SnippetModel = _$SnippetModelTearOff();

/// @nodoc
mixin _$SnippetModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  Thumbnails get thumbnails => throw _privateConstructorUsedError;
  Localized get localized => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetModelCopyWith<SnippetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetModelCopyWith<$Res> {
  factory $SnippetModelCopyWith(
          SnippetModel value, $Res Function(SnippetModel) then) =
      _$SnippetModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      Thumbnails thumbnails,
      Localized localized,
      String? country});

  $ThumbnailsCopyWith<$Res> get thumbnails;
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class _$SnippetModelCopyWithImpl<$Res> implements $SnippetModelCopyWith<$Res> {
  _$SnippetModelCopyWithImpl(this._value, this._then);

  final SnippetModel _value;
  // ignore: unused_field
  final $Res Function(SnippetModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? thumbnails = freezed,
    Object? localized = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      localized: localized == freezed
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails {
    return $ThumbnailsCopyWith<$Res>(_value.thumbnails, (value) {
      return _then(_value.copyWith(thumbnails: value));
    });
  }

  @override
  $LocalizedCopyWith<$Res> get localized {
    return $LocalizedCopyWith<$Res>(_value.localized, (value) {
      return _then(_value.copyWith(localized: value));
    });
  }
}

/// @nodoc
abstract class _$SnippetModelCopyWith<$Res>
    implements $SnippetModelCopyWith<$Res> {
  factory _$SnippetModelCopyWith(
          _SnippetModel value, $Res Function(_SnippetModel) then) =
      __$SnippetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      DateTime publishedAt,
      Thumbnails thumbnails,
      Localized localized,
      String? country});

  @override
  $ThumbnailsCopyWith<$Res> get thumbnails;
  @override
  $LocalizedCopyWith<$Res> get localized;
}

/// @nodoc
class __$SnippetModelCopyWithImpl<$Res> extends _$SnippetModelCopyWithImpl<$Res>
    implements _$SnippetModelCopyWith<$Res> {
  __$SnippetModelCopyWithImpl(
      _SnippetModel _value, $Res Function(_SnippetModel) _then)
      : super(_value, (v) => _then(v as _SnippetModel));

  @override
  _SnippetModel get _value => super._value as _SnippetModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? publishedAt = freezed,
    Object? thumbnails = freezed,
    Object? localized = freezed,
    Object? country = freezed,
  }) {
    return _then(_SnippetModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnails: thumbnails == freezed
          ? _value.thumbnails
          : thumbnails // ignore: cast_nullable_to_non_nullable
              as Thumbnails,
      localized: localized == freezed
          ? _value.localized
          : localized // ignore: cast_nullable_to_non_nullable
              as Localized,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SnippetModel implements _SnippetModel {
  const _$_SnippetModel(
      {required this.title,
      required this.description,
      required this.publishedAt,
      required this.thumbnails,
      required this.localized,
      this.country});

  factory _$_SnippetModel.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime publishedAt;
  @override
  final Thumbnails thumbnails;
  @override
  final Localized localized;
  @override
  final String? country;

  @override
  String toString() {
    return 'SnippetModel(title: $title, description: $description, publishedAt: $publishedAt, thumbnails: $thumbnails, localized: $localized, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnippetModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality()
                .equals(other.thumbnails, thumbnails) &&
            const DeepCollectionEquality().equals(other.localized, localized) &&
            const DeepCollectionEquality().equals(other.country, country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(thumbnails),
      const DeepCollectionEquality().hash(localized),
      const DeepCollectionEquality().hash(country));

  @JsonKey(ignore: true)
  @override
  _$SnippetModelCopyWith<_SnippetModel> get copyWith =>
      __$SnippetModelCopyWithImpl<_SnippetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetModelToJson(this);
  }
}

abstract class _SnippetModel implements SnippetModel {
  const factory _SnippetModel(
      {required String title,
      required String description,
      required DateTime publishedAt,
      required Thumbnails thumbnails,
      required Localized localized,
      String? country}) = _$_SnippetModel;

  factory _SnippetModel.fromJson(Map<String, dynamic> json) =
      _$_SnippetModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get publishedAt;
  @override
  Thumbnails get thumbnails;
  @override
  Localized get localized;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$SnippetModelCopyWith<_SnippetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Localized _$LocalizedFromJson(Map<String, dynamic> json) {
  return _Localized.fromJson(json);
}

/// @nodoc
class _$LocalizedTearOff {
  const _$LocalizedTearOff();

  _Localized call({required String title, required String description}) {
    return _Localized(
      title: title,
      description: description,
    );
  }

  Localized fromJson(Map<String, Object?> json) {
    return Localized.fromJson(json);
  }
}

/// @nodoc
const $Localized = _$LocalizedTearOff();

/// @nodoc
mixin _$Localized {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizedCopyWith<Localized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizedCopyWith<$Res> {
  factory $LocalizedCopyWith(Localized value, $Res Function(Localized) then) =
      _$LocalizedCopyWithImpl<$Res>;
  $Res call({String title, String description});
}

/// @nodoc
class _$LocalizedCopyWithImpl<$Res> implements $LocalizedCopyWith<$Res> {
  _$LocalizedCopyWithImpl(this._value, this._then);

  final Localized _value;
  // ignore: unused_field
  final $Res Function(Localized) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocalizedCopyWith<$Res> implements $LocalizedCopyWith<$Res> {
  factory _$LocalizedCopyWith(
          _Localized value, $Res Function(_Localized) then) =
      __$LocalizedCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description});
}

/// @nodoc
class __$LocalizedCopyWithImpl<$Res> extends _$LocalizedCopyWithImpl<$Res>
    implements _$LocalizedCopyWith<$Res> {
  __$LocalizedCopyWithImpl(_Localized _value, $Res Function(_Localized) _then)
      : super(_value, (v) => _then(v as _Localized));

  @override
  _Localized get _value => super._value as _Localized;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_Localized(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Localized implements _Localized {
  const _$_Localized({required this.title, required this.description});

  factory _$_Localized.fromJson(Map<String, dynamic> json) =>
      _$$_LocalizedFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'Localized(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Localized &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$LocalizedCopyWith<_Localized> get copyWith =>
      __$LocalizedCopyWithImpl<_Localized>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalizedToJson(this);
  }
}

abstract class _Localized implements Localized {
  const factory _Localized(
      {required String title, required String description}) = _$_Localized;

  factory _Localized.fromJson(Map<String, dynamic> json) =
      _$_Localized.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$LocalizedCopyWith<_Localized> get copyWith =>
      throw _privateConstructorUsedError;
}

Thumbnails _$ThumbnailsFromJson(Map<String, dynamic> json) {
  return _Thumbnails.fromJson(json);
}

/// @nodoc
class _$ThumbnailsTearOff {
  const _$ThumbnailsTearOff();

  _Thumbnails call(
      {Default? thumbnailsDefault, Default? medium, Default? high}) {
    return _Thumbnails(
      thumbnailsDefault: thumbnailsDefault,
      medium: medium,
      high: high,
    );
  }

  Thumbnails fromJson(Map<String, Object?> json) {
    return Thumbnails.fromJson(json);
  }
}

/// @nodoc
const $Thumbnails = _$ThumbnailsTearOff();

/// @nodoc
mixin _$Thumbnails {
  Default? get thumbnailsDefault => throw _privateConstructorUsedError;
  Default? get medium => throw _privateConstructorUsedError;
  Default? get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailsCopyWith<Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailsCopyWith<$Res> {
  factory $ThumbnailsCopyWith(
          Thumbnails value, $Res Function(Thumbnails) then) =
      _$ThumbnailsCopyWithImpl<$Res>;
  $Res call({Default? thumbnailsDefault, Default? medium, Default? high});

  $DefaultCopyWith<$Res>? get thumbnailsDefault;
  $DefaultCopyWith<$Res>? get medium;
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class _$ThumbnailsCopyWithImpl<$Res> implements $ThumbnailsCopyWith<$Res> {
  _$ThumbnailsCopyWithImpl(this._value, this._then);

  final Thumbnails _value;
  // ignore: unused_field
  final $Res Function(Thumbnails) _then;

  @override
  $Res call({
    Object? thumbnailsDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnailsDefault: thumbnailsDefault == freezed
          ? _value.thumbnailsDefault
          : thumbnailsDefault // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }

  @override
  $DefaultCopyWith<$Res>? get thumbnailsDefault {
    if (_value.thumbnailsDefault == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.thumbnailsDefault!, (value) {
      return _then(_value.copyWith(thumbnailsDefault: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get medium {
    if (_value.medium == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.medium!, (value) {
      return _then(_value.copyWith(medium: value));
    });
  }

  @override
  $DefaultCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $DefaultCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value));
    });
  }
}

/// @nodoc
abstract class _$ThumbnailsCopyWith<$Res> implements $ThumbnailsCopyWith<$Res> {
  factory _$ThumbnailsCopyWith(
          _Thumbnails value, $Res Function(_Thumbnails) then) =
      __$ThumbnailsCopyWithImpl<$Res>;
  @override
  $Res call({Default? thumbnailsDefault, Default? medium, Default? high});

  @override
  $DefaultCopyWith<$Res>? get thumbnailsDefault;
  @override
  $DefaultCopyWith<$Res>? get medium;
  @override
  $DefaultCopyWith<$Res>? get high;
}

/// @nodoc
class __$ThumbnailsCopyWithImpl<$Res> extends _$ThumbnailsCopyWithImpl<$Res>
    implements _$ThumbnailsCopyWith<$Res> {
  __$ThumbnailsCopyWithImpl(
      _Thumbnails _value, $Res Function(_Thumbnails) _then)
      : super(_value, (v) => _then(v as _Thumbnails));

  @override
  _Thumbnails get _value => super._value as _Thumbnails;

  @override
  $Res call({
    Object? thumbnailsDefault = freezed,
    Object? medium = freezed,
    Object? high = freezed,
  }) {
    return _then(_Thumbnails(
      thumbnailsDefault: thumbnailsDefault == freezed
          ? _value.thumbnailsDefault
          : thumbnailsDefault // ignore: cast_nullable_to_non_nullable
              as Default?,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as Default?,
      high: high == freezed
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Default?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Thumbnails implements _Thumbnails {
  const _$_Thumbnails({this.thumbnailsDefault, this.medium, this.high});

  factory _$_Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$$_ThumbnailsFromJson(json);

  @override
  final Default? thumbnailsDefault;
  @override
  final Default? medium;
  @override
  final Default? high;

  @override
  String toString() {
    return 'Thumbnails(thumbnailsDefault: $thumbnailsDefault, medium: $medium, high: $high)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Thumbnails &&
            const DeepCollectionEquality()
                .equals(other.thumbnailsDefault, thumbnailsDefault) &&
            const DeepCollectionEquality().equals(other.medium, medium) &&
            const DeepCollectionEquality().equals(other.high, high));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thumbnailsDefault),
      const DeepCollectionEquality().hash(medium),
      const DeepCollectionEquality().hash(high));

  @JsonKey(ignore: true)
  @override
  _$ThumbnailsCopyWith<_Thumbnails> get copyWith =>
      __$ThumbnailsCopyWithImpl<_Thumbnails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThumbnailsToJson(this);
  }
}

abstract class _Thumbnails implements Thumbnails {
  const factory _Thumbnails(
      {Default? thumbnailsDefault,
      Default? medium,
      Default? high}) = _$_Thumbnails;

  factory _Thumbnails.fromJson(Map<String, dynamic> json) =
      _$_Thumbnails.fromJson;

  @override
  Default? get thumbnailsDefault;
  @override
  Default? get medium;
  @override
  Default? get high;
  @override
  @JsonKey(ignore: true)
  _$ThumbnailsCopyWith<_Thumbnails> get copyWith =>
      throw _privateConstructorUsedError;
}

Default _$DefaultFromJson(Map<String, dynamic> json) {
  return _Default.fromJson(json);
}

/// @nodoc
class _$DefaultTearOff {
  const _$DefaultTearOff();

  _Default call(
      {required String url, required int width, required int height}) {
    return _Default(
      url: url,
      width: width,
      height: height,
    );
  }

  Default fromJson(Map<String, Object?> json) {
    return Default.fromJson(json);
  }
}

/// @nodoc
const $Default = _$DefaultTearOff();

/// @nodoc
mixin _$Default {
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultCopyWith<Default> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultCopyWith<$Res> {
  factory $DefaultCopyWith(Default value, $Res Function(Default) then) =
      _$DefaultCopyWithImpl<$Res>;
  $Res call({String url, int width, int height});
}

/// @nodoc
class _$DefaultCopyWithImpl<$Res> implements $DefaultCopyWith<$Res> {
  _$DefaultCopyWithImpl(this._value, this._then);

  final Default _value;
  // ignore: unused_field
  final $Res Function(Default) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DefaultCopyWith<$Res> implements $DefaultCopyWith<$Res> {
  factory _$DefaultCopyWith(_Default value, $Res Function(_Default) then) =
      __$DefaultCopyWithImpl<$Res>;
  @override
  $Res call({String url, int width, int height});
}

/// @nodoc
class __$DefaultCopyWithImpl<$Res> extends _$DefaultCopyWithImpl<$Res>
    implements _$DefaultCopyWith<$Res> {
  __$DefaultCopyWithImpl(_Default _value, $Res Function(_Default) _then)
      : super(_value, (v) => _then(v as _Default));

  @override
  _Default get _value => super._value as _Default;

  @override
  $Res call({
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_Default(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Default implements _Default {
  const _$_Default(
      {required this.url, required this.width, required this.height});

  factory _$_Default.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultFromJson(json);

  @override
  final String url;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'Default(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Default &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height));

  @JsonKey(ignore: true)
  @override
  _$DefaultCopyWith<_Default> get copyWith =>
      __$DefaultCopyWithImpl<_Default>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultToJson(this);
  }
}

abstract class _Default implements Default {
  const factory _Default(
      {required String url,
      required int width,
      required int height}) = _$_Default;

  factory _Default.fromJson(Map<String, dynamic> json) = _$_Default.fromJson;

  @override
  String get url;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(ignore: true)
  _$DefaultCopyWith<_Default> get copyWith =>
      throw _privateConstructorUsedError;
}
