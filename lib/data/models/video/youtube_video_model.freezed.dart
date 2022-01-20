// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'youtube_video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YouTubeVideoModel _$YouTubeVideoModelFromJson(Map<String, dynamic> json) {
  return _YouTubeVideoModel.fromJson(json);
}

/// @nodoc
class _$YouTubeVideoModelTearOff {
  const _$YouTubeVideoModelTearOff();

  _YouTubeVideoModel call(
      {required String kind, required String etag, required List<Item> items}) {
    return _YouTubeVideoModel(
      kind: kind,
      etag: etag,
      items: items,
    );
  }

  YouTubeVideoModel fromJson(Map<String, Object?> json) {
    return YouTubeVideoModel.fromJson(json);
  }
}

/// @nodoc
const $YouTubeVideoModel = _$YouTubeVideoModelTearOff();

/// @nodoc
mixin _$YouTubeVideoModel {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  List<Item> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YouTubeVideoModelCopyWith<YouTubeVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YouTubeVideoModelCopyWith<$Res> {
  factory $YouTubeVideoModelCopyWith(
          YouTubeVideoModel value, $Res Function(YouTubeVideoModel) then) =
      _$YouTubeVideoModelCopyWithImpl<$Res>;
  $Res call({String kind, String etag, List<Item> items});
}

/// @nodoc
class _$YouTubeVideoModelCopyWithImpl<$Res>
    implements $YouTubeVideoModelCopyWith<$Res> {
  _$YouTubeVideoModelCopyWithImpl(this._value, this._then);

  final YouTubeVideoModel _value;
  // ignore: unused_field
  final $Res Function(YouTubeVideoModel) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc
abstract class _$YouTubeVideoModelCopyWith<$Res>
    implements $YouTubeVideoModelCopyWith<$Res> {
  factory _$YouTubeVideoModelCopyWith(
          _YouTubeVideoModel value, $Res Function(_YouTubeVideoModel) then) =
      __$YouTubeVideoModelCopyWithImpl<$Res>;
  @override
  $Res call({String kind, String etag, List<Item> items});
}

/// @nodoc
class __$YouTubeVideoModelCopyWithImpl<$Res>
    extends _$YouTubeVideoModelCopyWithImpl<$Res>
    implements _$YouTubeVideoModelCopyWith<$Res> {
  __$YouTubeVideoModelCopyWithImpl(
      _YouTubeVideoModel _value, $Res Function(_YouTubeVideoModel) _then)
      : super(_value, (v) => _then(v as _YouTubeVideoModel));

  @override
  _YouTubeVideoModel get _value => super._value as _YouTubeVideoModel;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? items = freezed,
  }) {
    return _then(_YouTubeVideoModel(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_YouTubeVideoModel implements _YouTubeVideoModel {
  const _$_YouTubeVideoModel(
      {required this.kind, required this.etag, required this.items});

  factory _$_YouTubeVideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_YouTubeVideoModelFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final List<Item> items;

  @override
  String toString() {
    return 'YouTubeVideoModel(kind: $kind, etag: $etag, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _YouTubeVideoModel &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$YouTubeVideoModelCopyWith<_YouTubeVideoModel> get copyWith =>
      __$YouTubeVideoModelCopyWithImpl<_YouTubeVideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YouTubeVideoModelToJson(this);
  }
}

abstract class _YouTubeVideoModel implements YouTubeVideoModel {
  const factory _YouTubeVideoModel(
      {required String kind,
      required String etag,
      required List<Item> items}) = _$_YouTubeVideoModel;

  factory _YouTubeVideoModel.fromJson(Map<String, dynamic> json) =
      _$_YouTubeVideoModel.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$YouTubeVideoModelCopyWith<_YouTubeVideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

  _Item call(
      {required String kind,
      required String etag,
      required String id,
      required Snippet snippet}) {
    return _Item(
      kind: kind,
      etag: etag,
      id: id,
      snippet: snippet,
    );
  }

  Item fromJson(Map<String, Object?> json) {
    return Item.fromJson(json);
  }
}

/// @nodoc
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  String get kind => throw _privateConstructorUsedError;
  String get etag => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Snippet get snippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call({String kind, String etag, String id, Snippet snippet});

  $SnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
    ));
  }

  @override
  $SnippetCopyWith<$Res> get snippet {
    return $SnippetCopyWith<$Res>(_value.snippet, (value) {
      return _then(_value.copyWith(snippet: value));
    });
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call({String kind, String etag, String id, Snippet snippet});

  @override
  $SnippetCopyWith<$Res> get snippet;
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object? kind = freezed,
    Object? etag = freezed,
    Object? id = freezed,
    Object? snippet = freezed,
  }) {
    return _then(_Item(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      snippet: snippet == freezed
          ? _value.snippet
          : snippet // ignore: cast_nullable_to_non_nullable
              as Snippet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  const _$_Item(
      {required this.kind,
      required this.etag,
      required this.id,
      required this.snippet});

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String kind;
  @override
  final String etag;
  @override
  final String id;
  @override
  final Snippet snippet;

  @override
  String toString() {
    return 'Item(kind: $kind, etag: $etag, id: $id, snippet: $snippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Item &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.snippet, snippet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(snippet));

  @JsonKey(ignore: true)
  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(this);
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {required String kind,
      required String etag,
      required String id,
      required Snippet snippet}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get kind;
  @override
  String get etag;
  @override
  String get id;
  @override
  Snippet get snippet;
  @override
  @JsonKey(ignore: true)
  _$ItemCopyWith<_Item> get copyWith => throw _privateConstructorUsedError;
}

Snippet _$SnippetFromJson(Map<String, dynamic> json) {
  return _Snippet.fromJson(json);
}

/// @nodoc
class _$SnippetTearOff {
  const _$SnippetTearOff();

  _Snippet call(
      {required DateTime publishedAt,
      required String channelId,
      required String title,
      required String description,
      required String channelTitle,
      required String playlistId,
      required ResourceId resourceId}) {
    return _Snippet(
      publishedAt: publishedAt,
      channelId: channelId,
      title: title,
      description: description,
      channelTitle: channelTitle,
      playlistId: playlistId,
      resourceId: resourceId,
    );
  }

  Snippet fromJson(Map<String, Object?> json) {
    return Snippet.fromJson(json);
  }
}

/// @nodoc
const $Snippet = _$SnippetTearOff();

/// @nodoc
mixin _$Snippet {
  DateTime get publishedAt => throw _privateConstructorUsedError;
  String get channelId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; //required Thumbnails thumbnails,
  String get channelTitle => throw _privateConstructorUsedError;
  String get playlistId => throw _privateConstructorUsedError;
  ResourceId get resourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnippetCopyWith<Snippet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnippetCopyWith<$Res> {
  factory $SnippetCopyWith(Snippet value, $Res Function(Snippet) then) =
      _$SnippetCopyWithImpl<$Res>;
  $Res call(
      {DateTime publishedAt,
      String channelId,
      String title,
      String description,
      String channelTitle,
      String playlistId,
      ResourceId resourceId});

  $ResourceIdCopyWith<$Res> get resourceId;
}

/// @nodoc
class _$SnippetCopyWithImpl<$Res> implements $SnippetCopyWith<$Res> {
  _$SnippetCopyWithImpl(this._value, this._then);

  final Snippet _value;
  // ignore: unused_field
  final $Res Function(Snippet) _then;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelTitle = freezed,
    Object? playlistId = freezed,
    Object? resourceId = freezed,
  }) {
    return _then(_value.copyWith(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      playlistId: playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceId,
    ));
  }

  @override
  $ResourceIdCopyWith<$Res> get resourceId {
    return $ResourceIdCopyWith<$Res>(_value.resourceId, (value) {
      return _then(_value.copyWith(resourceId: value));
    });
  }
}

/// @nodoc
abstract class _$SnippetCopyWith<$Res> implements $SnippetCopyWith<$Res> {
  factory _$SnippetCopyWith(_Snippet value, $Res Function(_Snippet) then) =
      __$SnippetCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime publishedAt,
      String channelId,
      String title,
      String description,
      String channelTitle,
      String playlistId,
      ResourceId resourceId});

  @override
  $ResourceIdCopyWith<$Res> get resourceId;
}

/// @nodoc
class __$SnippetCopyWithImpl<$Res> extends _$SnippetCopyWithImpl<$Res>
    implements _$SnippetCopyWith<$Res> {
  __$SnippetCopyWithImpl(_Snippet _value, $Res Function(_Snippet) _then)
      : super(_value, (v) => _then(v as _Snippet));

  @override
  _Snippet get _value => super._value as _Snippet;

  @override
  $Res call({
    Object? publishedAt = freezed,
    Object? channelId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? channelTitle = freezed,
    Object? playlistId = freezed,
    Object? resourceId = freezed,
  }) {
    return _then(_Snippet(
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      channelTitle: channelTitle == freezed
          ? _value.channelTitle
          : channelTitle // ignore: cast_nullable_to_non_nullable
              as String,
      playlistId: playlistId == freezed
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: resourceId == freezed
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as ResourceId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Snippet implements _Snippet {
  const _$_Snippet(
      {required this.publishedAt,
      required this.channelId,
      required this.title,
      required this.description,
      required this.channelTitle,
      required this.playlistId,
      required this.resourceId});

  factory _$_Snippet.fromJson(Map<String, dynamic> json) =>
      _$$_SnippetFromJson(json);

  @override
  final DateTime publishedAt;
  @override
  final String channelId;
  @override
  final String title;
  @override
  final String description;
  @override //required Thumbnails thumbnails,
  final String channelTitle;
  @override
  final String playlistId;
  @override
  final ResourceId resourceId;

  @override
  String toString() {
    return 'Snippet(publishedAt: $publishedAt, channelId: $channelId, title: $title, description: $description, channelTitle: $channelTitle, playlistId: $playlistId, resourceId: $resourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Snippet &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.channelId, channelId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.channelTitle, channelTitle) &&
            const DeepCollectionEquality()
                .equals(other.playlistId, playlistId) &&
            const DeepCollectionEquality()
                .equals(other.resourceId, resourceId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(channelId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(channelTitle),
      const DeepCollectionEquality().hash(playlistId),
      const DeepCollectionEquality().hash(resourceId));

  @JsonKey(ignore: true)
  @override
  _$SnippetCopyWith<_Snippet> get copyWith =>
      __$SnippetCopyWithImpl<_Snippet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnippetToJson(this);
  }
}

abstract class _Snippet implements Snippet {
  const factory _Snippet(
      {required DateTime publishedAt,
      required String channelId,
      required String title,
      required String description,
      required String channelTitle,
      required String playlistId,
      required ResourceId resourceId}) = _$_Snippet;

  factory _Snippet.fromJson(Map<String, dynamic> json) = _$_Snippet.fromJson;

  @override
  DateTime get publishedAt;
  @override
  String get channelId;
  @override
  String get title;
  @override
  String get description;
  @override //required Thumbnails thumbnails,
  String get channelTitle;
  @override
  String get playlistId;
  @override
  ResourceId get resourceId;
  @override
  @JsonKey(ignore: true)
  _$SnippetCopyWith<_Snippet> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceId _$ResourceIdFromJson(Map<String, dynamic> json) {
  return _ResourceId.fromJson(json);
}

/// @nodoc
class _$ResourceIdTearOff {
  const _$ResourceIdTearOff();

  _ResourceId call({required String kind, required String videoId}) {
    return _ResourceId(
      kind: kind,
      videoId: videoId,
    );
  }

  ResourceId fromJson(Map<String, Object?> json) {
    return ResourceId.fromJson(json);
  }
}

/// @nodoc
const $ResourceId = _$ResourceIdTearOff();

/// @nodoc
mixin _$ResourceId {
  String get kind => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceIdCopyWith<ResourceId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceIdCopyWith<$Res> {
  factory $ResourceIdCopyWith(
          ResourceId value, $Res Function(ResourceId) then) =
      _$ResourceIdCopyWithImpl<$Res>;
  $Res call({String kind, String videoId});
}

/// @nodoc
class _$ResourceIdCopyWithImpl<$Res> implements $ResourceIdCopyWith<$Res> {
  _$ResourceIdCopyWithImpl(this._value, this._then);

  final ResourceId _value;
  // ignore: unused_field
  final $Res Function(ResourceId) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ResourceIdCopyWith<$Res> implements $ResourceIdCopyWith<$Res> {
  factory _$ResourceIdCopyWith(
          _ResourceId value, $Res Function(_ResourceId) then) =
      __$ResourceIdCopyWithImpl<$Res>;
  @override
  $Res call({String kind, String videoId});
}

/// @nodoc
class __$ResourceIdCopyWithImpl<$Res> extends _$ResourceIdCopyWithImpl<$Res>
    implements _$ResourceIdCopyWith<$Res> {
  __$ResourceIdCopyWithImpl(
      _ResourceId _value, $Res Function(_ResourceId) _then)
      : super(_value, (v) => _then(v as _ResourceId));

  @override
  _ResourceId get _value => super._value as _ResourceId;

  @override
  $Res call({
    Object? kind = freezed,
    Object? videoId = freezed,
  }) {
    return _then(_ResourceId(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourceId implements _ResourceId {
  const _$_ResourceId({required this.kind, required this.videoId});

  factory _$_ResourceId.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceIdFromJson(json);

  @override
  final String kind;
  @override
  final String videoId;

  @override
  String toString() {
    return 'ResourceId(kind: $kind, videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResourceId &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.videoId, videoId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(videoId));

  @JsonKey(ignore: true)
  @override
  _$ResourceIdCopyWith<_ResourceId> get copyWith =>
      __$ResourceIdCopyWithImpl<_ResourceId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceIdToJson(this);
  }
}

abstract class _ResourceId implements ResourceId {
  const factory _ResourceId({required String kind, required String videoId}) =
      _$_ResourceId;

  factory _ResourceId.fromJson(Map<String, dynamic> json) =
      _$_ResourceId.fromJson;

  @override
  String get kind;
  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$ResourceIdCopyWith<_ResourceId> get copyWith =>
      throw _privateConstructorUsedError;
}
