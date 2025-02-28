// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  Feed get feed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call({Feed feed});

  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
  }) {
    return _then(_value.copyWith(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Feed,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedCopyWith<$Res> get feed {
    return $FeedCopyWith<$Res>(_value.feed, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseImplCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$ApiResponseImplCopyWith(
          _$ApiResponseImpl value, $Res Function(_$ApiResponseImpl) then) =
      __$$ApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Feed feed});

  @override
  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class __$$ApiResponseImplCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$ApiResponseImpl>
    implements _$$ApiResponseImplCopyWith<$Res> {
  __$$ApiResponseImplCopyWithImpl(
      _$ApiResponseImpl _value, $Res Function(_$ApiResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = null,
  }) {
    return _then(_$ApiResponseImpl(
      feed: null == feed
          ? _value.feed
          : feed // ignore: cast_nullable_to_non_nullable
              as Feed,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseImpl implements _ApiResponse {
  const _$ApiResponseImpl({required this.feed});

  factory _$ApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseImplFromJson(json);

  @override
  final Feed feed;

  @override
  String toString() {
    return 'ApiResponse(feed: $feed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseImpl &&
            (identical(other.feed, feed) || other.feed == feed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      __$$ApiResponseImplCopyWithImpl<_$ApiResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseImplToJson(
      this,
    );
  }
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse({required final Feed feed}) = _$ApiResponseImpl;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$ApiResponseImpl.fromJson;

  @override
  Feed get feed;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseImplCopyWith<_$ApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  List<SongEntry> get entry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call({List<SongEntry> entry});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_value.copyWith(
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<SongEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SongEntry> entry});
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$FeedImpl(
      entry: null == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<SongEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedImpl implements _Feed {
  const _$FeedImpl({required final List<SongEntry> entry}) : _entry = entry;

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  final List<SongEntry> _entry;
  @override
  List<SongEntry> get entry {
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entry);
  }

  @override
  String toString() {
    return 'Feed(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            const DeepCollectionEquality().equals(other._entry, _entry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entry));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
      this,
    );
  }
}

abstract class _Feed implements Feed {
  const factory _Feed({required final List<SongEntry> entry}) = _$FeedImpl;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  List<SongEntry> get entry;
  @override
  @JsonKey(ignore: true)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SongEntry _$SongEntryFromJson(Map<String, dynamic> json) {
  return _SongEntry.fromJson(json);
}

/// @nodoc
mixin _$SongEntry {
  @JsonKey(name: 'im:name')
  NameWrapper get imName => throw _privateConstructorUsedError;
  @JsonKey(name: 'im:image')
  List<ImageWrapper> get imImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'im:artist')
  ArtistWrapper get imArtist => throw _privateConstructorUsedError;
  List<LinkWrapper> get link => throw _privateConstructorUsedError;
  IdWrapper get id => throw _privateConstructorUsedError;
  CategoryWrapper get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'im:releaseDate')
  ReleaseDateWrapper get imReleaseDate => throw _privateConstructorUsedError;
  TitleWrapper get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SongEntryCopyWith<SongEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongEntryCopyWith<$Res> {
  factory $SongEntryCopyWith(SongEntry value, $Res Function(SongEntry) then) =
      _$SongEntryCopyWithImpl<$Res, SongEntry>;
  @useResult
  $Res call(
      {@JsonKey(name: 'im:name') NameWrapper imName,
      @JsonKey(name: 'im:image') List<ImageWrapper> imImage,
      @JsonKey(name: 'im:artist') ArtistWrapper imArtist,
      List<LinkWrapper> link,
      IdWrapper id,
      CategoryWrapper category,
      @JsonKey(name: 'im:releaseDate') ReleaseDateWrapper imReleaseDate,
      TitleWrapper title});

  $NameWrapperCopyWith<$Res> get imName;
  $ArtistWrapperCopyWith<$Res> get imArtist;
  $IdWrapperCopyWith<$Res> get id;
  $CategoryWrapperCopyWith<$Res> get category;
  $ReleaseDateWrapperCopyWith<$Res> get imReleaseDate;
  $TitleWrapperCopyWith<$Res> get title;
}

/// @nodoc
class _$SongEntryCopyWithImpl<$Res, $Val extends SongEntry>
    implements $SongEntryCopyWith<$Res> {
  _$SongEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imName = null,
    Object? imImage = null,
    Object? imArtist = null,
    Object? link = null,
    Object? id = null,
    Object? category = null,
    Object? imReleaseDate = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      imName: null == imName
          ? _value.imName
          : imName // ignore: cast_nullable_to_non_nullable
              as NameWrapper,
      imImage: null == imImage
          ? _value.imImage
          : imImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWrapper>,
      imArtist: null == imArtist
          ? _value.imArtist
          : imArtist // ignore: cast_nullable_to_non_nullable
              as ArtistWrapper,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as List<LinkWrapper>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdWrapper,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryWrapper,
      imReleaseDate: null == imReleaseDate
          ? _value.imReleaseDate
          : imReleaseDate // ignore: cast_nullable_to_non_nullable
              as ReleaseDateWrapper,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleWrapper,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameWrapperCopyWith<$Res> get imName {
    return $NameWrapperCopyWith<$Res>(_value.imName, (value) {
      return _then(_value.copyWith(imName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistWrapperCopyWith<$Res> get imArtist {
    return $ArtistWrapperCopyWith<$Res>(_value.imArtist, (value) {
      return _then(_value.copyWith(imArtist: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdWrapperCopyWith<$Res> get id {
    return $IdWrapperCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryWrapperCopyWith<$Res> get category {
    return $CategoryWrapperCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReleaseDateWrapperCopyWith<$Res> get imReleaseDate {
    return $ReleaseDateWrapperCopyWith<$Res>(_value.imReleaseDate, (value) {
      return _then(_value.copyWith(imReleaseDate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TitleWrapperCopyWith<$Res> get title {
    return $TitleWrapperCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SongEntryImplCopyWith<$Res>
    implements $SongEntryCopyWith<$Res> {
  factory _$$SongEntryImplCopyWith(
          _$SongEntryImpl value, $Res Function(_$SongEntryImpl) then) =
      __$$SongEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'im:name') NameWrapper imName,
      @JsonKey(name: 'im:image') List<ImageWrapper> imImage,
      @JsonKey(name: 'im:artist') ArtistWrapper imArtist,
      List<LinkWrapper> link,
      IdWrapper id,
      CategoryWrapper category,
      @JsonKey(name: 'im:releaseDate') ReleaseDateWrapper imReleaseDate,
      TitleWrapper title});

  @override
  $NameWrapperCopyWith<$Res> get imName;
  @override
  $ArtistWrapperCopyWith<$Res> get imArtist;
  @override
  $IdWrapperCopyWith<$Res> get id;
  @override
  $CategoryWrapperCopyWith<$Res> get category;
  @override
  $ReleaseDateWrapperCopyWith<$Res> get imReleaseDate;
  @override
  $TitleWrapperCopyWith<$Res> get title;
}

/// @nodoc
class __$$SongEntryImplCopyWithImpl<$Res>
    extends _$SongEntryCopyWithImpl<$Res, _$SongEntryImpl>
    implements _$$SongEntryImplCopyWith<$Res> {
  __$$SongEntryImplCopyWithImpl(
      _$SongEntryImpl _value, $Res Function(_$SongEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imName = null,
    Object? imImage = null,
    Object? imArtist = null,
    Object? link = null,
    Object? id = null,
    Object? category = null,
    Object? imReleaseDate = null,
    Object? title = null,
  }) {
    return _then(_$SongEntryImpl(
      imName: null == imName
          ? _value.imName
          : imName // ignore: cast_nullable_to_non_nullable
              as NameWrapper,
      imImage: null == imImage
          ? _value._imImage
          : imImage // ignore: cast_nullable_to_non_nullable
              as List<ImageWrapper>,
      imArtist: null == imArtist
          ? _value.imArtist
          : imArtist // ignore: cast_nullable_to_non_nullable
              as ArtistWrapper,
      link: null == link
          ? _value._link
          : link // ignore: cast_nullable_to_non_nullable
              as List<LinkWrapper>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdWrapper,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryWrapper,
      imReleaseDate: null == imReleaseDate
          ? _value.imReleaseDate
          : imReleaseDate // ignore: cast_nullable_to_non_nullable
              as ReleaseDateWrapper,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleWrapper,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SongEntryImpl implements _SongEntry {
  const _$SongEntryImpl(
      {@JsonKey(name: 'im:name') required this.imName,
      @JsonKey(name: 'im:image') required final List<ImageWrapper> imImage,
      @JsonKey(name: 'im:artist') required this.imArtist,
      required final List<LinkWrapper> link,
      required this.id,
      required this.category,
      @JsonKey(name: 'im:releaseDate') required this.imReleaseDate,
      required this.title})
      : _imImage = imImage,
        _link = link;

  factory _$SongEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SongEntryImplFromJson(json);

  @override
  @JsonKey(name: 'im:name')
  final NameWrapper imName;
  final List<ImageWrapper> _imImage;
  @override
  @JsonKey(name: 'im:image')
  List<ImageWrapper> get imImage {
    if (_imImage is EqualUnmodifiableListView) return _imImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imImage);
  }

  @override
  @JsonKey(name: 'im:artist')
  final ArtistWrapper imArtist;
  final List<LinkWrapper> _link;
  @override
  List<LinkWrapper> get link {
    if (_link is EqualUnmodifiableListView) return _link;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_link);
  }

  @override
  final IdWrapper id;
  @override
  final CategoryWrapper category;
  @override
  @JsonKey(name: 'im:releaseDate')
  final ReleaseDateWrapper imReleaseDate;
  @override
  final TitleWrapper title;

  @override
  String toString() {
    return 'SongEntry(imName: $imName, imImage: $imImage, imArtist: $imArtist, link: $link, id: $id, category: $category, imReleaseDate: $imReleaseDate, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SongEntryImpl &&
            (identical(other.imName, imName) || other.imName == imName) &&
            const DeepCollectionEquality().equals(other._imImage, _imImage) &&
            (identical(other.imArtist, imArtist) ||
                other.imArtist == imArtist) &&
            const DeepCollectionEquality().equals(other._link, _link) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.imReleaseDate, imReleaseDate) ||
                other.imReleaseDate == imReleaseDate) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imName,
      const DeepCollectionEquality().hash(_imImage),
      imArtist,
      const DeepCollectionEquality().hash(_link),
      id,
      category,
      imReleaseDate,
      title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SongEntryImplCopyWith<_$SongEntryImpl> get copyWith =>
      __$$SongEntryImplCopyWithImpl<_$SongEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SongEntryImplToJson(
      this,
    );
  }
}

abstract class _SongEntry implements SongEntry {
  const factory _SongEntry(
      {@JsonKey(name: 'im:name') required final NameWrapper imName,
      @JsonKey(name: 'im:image') required final List<ImageWrapper> imImage,
      @JsonKey(name: 'im:artist') required final ArtistWrapper imArtist,
      required final List<LinkWrapper> link,
      required final IdWrapper id,
      required final CategoryWrapper category,
      @JsonKey(name: 'im:releaseDate')
      required final ReleaseDateWrapper imReleaseDate,
      required final TitleWrapper title}) = _$SongEntryImpl;

  factory _SongEntry.fromJson(Map<String, dynamic> json) =
      _$SongEntryImpl.fromJson;

  @override
  @JsonKey(name: 'im:name')
  NameWrapper get imName;
  @override
  @JsonKey(name: 'im:image')
  List<ImageWrapper> get imImage;
  @override
  @JsonKey(name: 'im:artist')
  ArtistWrapper get imArtist;
  @override
  List<LinkWrapper> get link;
  @override
  IdWrapper get id;
  @override
  CategoryWrapper get category;
  @override
  @JsonKey(name: 'im:releaseDate')
  ReleaseDateWrapper get imReleaseDate;
  @override
  TitleWrapper get title;
  @override
  @JsonKey(ignore: true)
  _$$SongEntryImplCopyWith<_$SongEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NameWrapper _$NameWrapperFromJson(Map<String, dynamic> json) {
  return _NameWrapper.fromJson(json);
}

/// @nodoc
mixin _$NameWrapper {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameWrapperCopyWith<NameWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameWrapperCopyWith<$Res> {
  factory $NameWrapperCopyWith(
          NameWrapper value, $Res Function(NameWrapper) then) =
      _$NameWrapperCopyWithImpl<$Res, NameWrapper>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$NameWrapperCopyWithImpl<$Res, $Val extends NameWrapper>
    implements $NameWrapperCopyWith<$Res> {
  _$NameWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameWrapperImplCopyWith<$Res>
    implements $NameWrapperCopyWith<$Res> {
  factory _$$NameWrapperImplCopyWith(
          _$NameWrapperImpl value, $Res Function(_$NameWrapperImpl) then) =
      __$$NameWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$NameWrapperImplCopyWithImpl<$Res>
    extends _$NameWrapperCopyWithImpl<$Res, _$NameWrapperImpl>
    implements _$$NameWrapperImplCopyWith<$Res> {
  __$$NameWrapperImplCopyWithImpl(
      _$NameWrapperImpl _value, $Res Function(_$NameWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$NameWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameWrapperImpl implements _NameWrapper {
  const _$NameWrapperImpl({required this.label});

  factory _$NameWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameWrapperImplFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'NameWrapper(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameWrapperImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameWrapperImplCopyWith<_$NameWrapperImpl> get copyWith =>
      __$$NameWrapperImplCopyWithImpl<_$NameWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameWrapperImplToJson(
      this,
    );
  }
}

abstract class _NameWrapper implements NameWrapper {
  const factory _NameWrapper({required final String label}) = _$NameWrapperImpl;

  factory _NameWrapper.fromJson(Map<String, dynamic> json) =
      _$NameWrapperImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$NameWrapperImplCopyWith<_$NameWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TitleWrapper _$TitleWrapperFromJson(Map<String, dynamic> json) {
  return _TitleWrapper.fromJson(json);
}

/// @nodoc
mixin _$TitleWrapper {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleWrapperCopyWith<TitleWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleWrapperCopyWith<$Res> {
  factory $TitleWrapperCopyWith(
          TitleWrapper value, $Res Function(TitleWrapper) then) =
      _$TitleWrapperCopyWithImpl<$Res, TitleWrapper>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$TitleWrapperCopyWithImpl<$Res, $Val extends TitleWrapper>
    implements $TitleWrapperCopyWith<$Res> {
  _$TitleWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleWrapperImplCopyWith<$Res>
    implements $TitleWrapperCopyWith<$Res> {
  factory _$$TitleWrapperImplCopyWith(
          _$TitleWrapperImpl value, $Res Function(_$TitleWrapperImpl) then) =
      __$$TitleWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$TitleWrapperImplCopyWithImpl<$Res>
    extends _$TitleWrapperCopyWithImpl<$Res, _$TitleWrapperImpl>
    implements _$$TitleWrapperImplCopyWith<$Res> {
  __$$TitleWrapperImplCopyWithImpl(
      _$TitleWrapperImpl _value, $Res Function(_$TitleWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$TitleWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleWrapperImpl implements _TitleWrapper {
  const _$TitleWrapperImpl({required this.label});

  factory _$TitleWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleWrapperImplFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'TitleWrapper(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleWrapperImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleWrapperImplCopyWith<_$TitleWrapperImpl> get copyWith =>
      __$$TitleWrapperImplCopyWithImpl<_$TitleWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleWrapperImplToJson(
      this,
    );
  }
}

abstract class _TitleWrapper implements TitleWrapper {
  const factory _TitleWrapper({required final String label}) =
      _$TitleWrapperImpl;

  factory _TitleWrapper.fromJson(Map<String, dynamic> json) =
      _$TitleWrapperImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$TitleWrapperImplCopyWith<_$TitleWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageWrapper _$ImageWrapperFromJson(Map<String, dynamic> json) {
  return _ImageWrapper.fromJson(json);
}

/// @nodoc
mixin _$ImageWrapper {
  String get label => throw _privateConstructorUsedError;
  ImageAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageWrapperCopyWith<ImageWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageWrapperCopyWith<$Res> {
  factory $ImageWrapperCopyWith(
          ImageWrapper value, $Res Function(ImageWrapper) then) =
      _$ImageWrapperCopyWithImpl<$Res, ImageWrapper>;
  @useResult
  $Res call({String label, ImageAttributes attributes});

  $ImageAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ImageWrapperCopyWithImpl<$Res, $Val extends ImageWrapper>
    implements $ImageWrapperCopyWith<$Res> {
  _$ImageWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ImageAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageAttributesCopyWith<$Res> get attributes {
    return $ImageAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageWrapperImplCopyWith<$Res>
    implements $ImageWrapperCopyWith<$Res> {
  factory _$$ImageWrapperImplCopyWith(
          _$ImageWrapperImpl value, $Res Function(_$ImageWrapperImpl) then) =
      __$$ImageWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, ImageAttributes attributes});

  @override
  $ImageAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ImageWrapperImplCopyWithImpl<$Res>
    extends _$ImageWrapperCopyWithImpl<$Res, _$ImageWrapperImpl>
    implements _$$ImageWrapperImplCopyWith<$Res> {
  __$$ImageWrapperImplCopyWithImpl(
      _$ImageWrapperImpl _value, $Res Function(_$ImageWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_$ImageWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ImageAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageWrapperImpl implements _ImageWrapper {
  const _$ImageWrapperImpl({required this.label, required this.attributes});

  factory _$ImageWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageWrapperImplFromJson(json);

  @override
  final String label;
  @override
  final ImageAttributes attributes;

  @override
  String toString() {
    return 'ImageWrapper(label: $label, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageWrapperImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageWrapperImplCopyWith<_$ImageWrapperImpl> get copyWith =>
      __$$ImageWrapperImplCopyWithImpl<_$ImageWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageWrapperImplToJson(
      this,
    );
  }
}

abstract class _ImageWrapper implements ImageWrapper {
  const factory _ImageWrapper(
      {required final String label,
      required final ImageAttributes attributes}) = _$ImageWrapperImpl;

  factory _ImageWrapper.fromJson(Map<String, dynamic> json) =
      _$ImageWrapperImpl.fromJson;

  @override
  String get label;
  @override
  ImageAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ImageWrapperImplCopyWith<_$ImageWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageAttributes _$ImageAttributesFromJson(Map<String, dynamic> json) {
  return _ImageAttributes.fromJson(json);
}

/// @nodoc
mixin _$ImageAttributes {
  String get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageAttributesCopyWith<ImageAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageAttributesCopyWith<$Res> {
  factory $ImageAttributesCopyWith(
          ImageAttributes value, $Res Function(ImageAttributes) then) =
      _$ImageAttributesCopyWithImpl<$Res, ImageAttributes>;
  @useResult
  $Res call({String height});
}

/// @nodoc
class _$ImageAttributesCopyWithImpl<$Res, $Val extends ImageAttributes>
    implements $ImageAttributesCopyWith<$Res> {
  _$ImageAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageAttributesImplCopyWith<$Res>
    implements $ImageAttributesCopyWith<$Res> {
  factory _$$ImageAttributesImplCopyWith(_$ImageAttributesImpl value,
          $Res Function(_$ImageAttributesImpl) then) =
      __$$ImageAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String height});
}

/// @nodoc
class __$$ImageAttributesImplCopyWithImpl<$Res>
    extends _$ImageAttributesCopyWithImpl<$Res, _$ImageAttributesImpl>
    implements _$$ImageAttributesImplCopyWith<$Res> {
  __$$ImageAttributesImplCopyWithImpl(
      _$ImageAttributesImpl _value, $Res Function(_$ImageAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
  }) {
    return _then(_$ImageAttributesImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageAttributesImpl implements _ImageAttributes {
  const _$ImageAttributesImpl({required this.height});

  factory _$ImageAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageAttributesImplFromJson(json);

  @override
  final String height;

  @override
  String toString() {
    return 'ImageAttributes(height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAttributesImpl &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageAttributesImplCopyWith<_$ImageAttributesImpl> get copyWith =>
      __$$ImageAttributesImplCopyWithImpl<_$ImageAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageAttributesImplToJson(
      this,
    );
  }
}

abstract class _ImageAttributes implements ImageAttributes {
  const factory _ImageAttributes({required final String height}) =
      _$ImageAttributesImpl;

  factory _ImageAttributes.fromJson(Map<String, dynamic> json) =
      _$ImageAttributesImpl.fromJson;

  @override
  String get height;
  @override
  @JsonKey(ignore: true)
  _$$ImageAttributesImplCopyWith<_$ImageAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistWrapper _$ArtistWrapperFromJson(Map<String, dynamic> json) {
  return _ArtistWrapper.fromJson(json);
}

/// @nodoc
mixin _$ArtistWrapper {
  String get label => throw _privateConstructorUsedError;
  ArtistAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistWrapperCopyWith<ArtistWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistWrapperCopyWith<$Res> {
  factory $ArtistWrapperCopyWith(
          ArtistWrapper value, $Res Function(ArtistWrapper) then) =
      _$ArtistWrapperCopyWithImpl<$Res, ArtistWrapper>;
  @useResult
  $Res call({String label, ArtistAttributes attributes});

  $ArtistAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ArtistWrapperCopyWithImpl<$Res, $Val extends ArtistWrapper>
    implements $ArtistWrapperCopyWith<$Res> {
  _$ArtistWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ArtistAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistAttributesCopyWith<$Res> get attributes {
    return $ArtistAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistWrapperImplCopyWith<$Res>
    implements $ArtistWrapperCopyWith<$Res> {
  factory _$$ArtistWrapperImplCopyWith(
          _$ArtistWrapperImpl value, $Res Function(_$ArtistWrapperImpl) then) =
      __$$ArtistWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, ArtistAttributes attributes});

  @override
  $ArtistAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ArtistWrapperImplCopyWithImpl<$Res>
    extends _$ArtistWrapperCopyWithImpl<$Res, _$ArtistWrapperImpl>
    implements _$$ArtistWrapperImplCopyWith<$Res> {
  __$$ArtistWrapperImplCopyWithImpl(
      _$ArtistWrapperImpl _value, $Res Function(_$ArtistWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_$ArtistWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ArtistAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistWrapperImpl implements _ArtistWrapper {
  const _$ArtistWrapperImpl({required this.label, required this.attributes});

  factory _$ArtistWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistWrapperImplFromJson(json);

  @override
  final String label;
  @override
  final ArtistAttributes attributes;

  @override
  String toString() {
    return 'ArtistWrapper(label: $label, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistWrapperImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistWrapperImplCopyWith<_$ArtistWrapperImpl> get copyWith =>
      __$$ArtistWrapperImplCopyWithImpl<_$ArtistWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistWrapperImplToJson(
      this,
    );
  }
}

abstract class _ArtistWrapper implements ArtistWrapper {
  const factory _ArtistWrapper(
      {required final String label,
      required final ArtistAttributes attributes}) = _$ArtistWrapperImpl;

  factory _ArtistWrapper.fromJson(Map<String, dynamic> json) =
      _$ArtistWrapperImpl.fromJson;

  @override
  String get label;
  @override
  ArtistAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ArtistWrapperImplCopyWith<_$ArtistWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ArtistAttributes _$ArtistAttributesFromJson(Map<String, dynamic> json) {
  return _ArtistAttributes.fromJson(json);
}

/// @nodoc
mixin _$ArtistAttributes {
  String get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistAttributesCopyWith<ArtistAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistAttributesCopyWith<$Res> {
  factory $ArtistAttributesCopyWith(
          ArtistAttributes value, $Res Function(ArtistAttributes) then) =
      _$ArtistAttributesCopyWithImpl<$Res, ArtistAttributes>;
  @useResult
  $Res call({String href});
}

/// @nodoc
class _$ArtistAttributesCopyWithImpl<$Res, $Val extends ArtistAttributes>
    implements $ArtistAttributesCopyWith<$Res> {
  _$ArtistAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistAttributesImplCopyWith<$Res>
    implements $ArtistAttributesCopyWith<$Res> {
  factory _$$ArtistAttributesImplCopyWith(_$ArtistAttributesImpl value,
          $Res Function(_$ArtistAttributesImpl) then) =
      __$$ArtistAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href});
}

/// @nodoc
class __$$ArtistAttributesImplCopyWithImpl<$Res>
    extends _$ArtistAttributesCopyWithImpl<$Res, _$ArtistAttributesImpl>
    implements _$$ArtistAttributesImplCopyWith<$Res> {
  __$$ArtistAttributesImplCopyWithImpl(_$ArtistAttributesImpl _value,
      $Res Function(_$ArtistAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
  }) {
    return _then(_$ArtistAttributesImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistAttributesImpl implements _ArtistAttributes {
  const _$ArtistAttributesImpl({required this.href});

  factory _$ArtistAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistAttributesImplFromJson(json);

  @override
  final String href;

  @override
  String toString() {
    return 'ArtistAttributes(href: $href)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistAttributesImpl &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistAttributesImplCopyWith<_$ArtistAttributesImpl> get copyWith =>
      __$$ArtistAttributesImplCopyWithImpl<_$ArtistAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistAttributesImplToJson(
      this,
    );
  }
}

abstract class _ArtistAttributes implements ArtistAttributes {
  const factory _ArtistAttributes({required final String href}) =
      _$ArtistAttributesImpl;

  factory _ArtistAttributes.fromJson(Map<String, dynamic> json) =
      _$ArtistAttributesImpl.fromJson;

  @override
  String get href;
  @override
  @JsonKey(ignore: true)
  _$$ArtistAttributesImplCopyWith<_$ArtistAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkWrapper _$LinkWrapperFromJson(Map<String, dynamic> json) {
  return _LinkWrapper.fromJson(json);
}

/// @nodoc
mixin _$LinkWrapper {
  LinkAttributes get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'im:duration')
  ImDuration? get imDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkWrapperCopyWith<LinkWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkWrapperCopyWith<$Res> {
  factory $LinkWrapperCopyWith(
          LinkWrapper value, $Res Function(LinkWrapper) then) =
      _$LinkWrapperCopyWithImpl<$Res, LinkWrapper>;
  @useResult
  $Res call(
      {LinkAttributes attributes,
      @JsonKey(name: 'im:duration') ImDuration? imDuration});

  $LinkAttributesCopyWith<$Res> get attributes;
  $ImDurationCopyWith<$Res>? get imDuration;
}

/// @nodoc
class _$LinkWrapperCopyWithImpl<$Res, $Val extends LinkWrapper>
    implements $LinkWrapperCopyWith<$Res> {
  _$LinkWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? imDuration = freezed,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LinkAttributes,
      imDuration: freezed == imDuration
          ? _value.imDuration
          : imDuration // ignore: cast_nullable_to_non_nullable
              as ImDuration?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinkAttributesCopyWith<$Res> get attributes {
    return $LinkAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ImDurationCopyWith<$Res>? get imDuration {
    if (_value.imDuration == null) {
      return null;
    }

    return $ImDurationCopyWith<$Res>(_value.imDuration!, (value) {
      return _then(_value.copyWith(imDuration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinkWrapperImplCopyWith<$Res>
    implements $LinkWrapperCopyWith<$Res> {
  factory _$$LinkWrapperImplCopyWith(
          _$LinkWrapperImpl value, $Res Function(_$LinkWrapperImpl) then) =
      __$$LinkWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LinkAttributes attributes,
      @JsonKey(name: 'im:duration') ImDuration? imDuration});

  @override
  $LinkAttributesCopyWith<$Res> get attributes;
  @override
  $ImDurationCopyWith<$Res>? get imDuration;
}

/// @nodoc
class __$$LinkWrapperImplCopyWithImpl<$Res>
    extends _$LinkWrapperCopyWithImpl<$Res, _$LinkWrapperImpl>
    implements _$$LinkWrapperImplCopyWith<$Res> {
  __$$LinkWrapperImplCopyWithImpl(
      _$LinkWrapperImpl _value, $Res Function(_$LinkWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
    Object? imDuration = freezed,
  }) {
    return _then(_$LinkWrapperImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as LinkAttributes,
      imDuration: freezed == imDuration
          ? _value.imDuration
          : imDuration // ignore: cast_nullable_to_non_nullable
              as ImDuration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkWrapperImpl implements _LinkWrapper {
  const _$LinkWrapperImpl(
      {required this.attributes,
      @JsonKey(name: 'im:duration') this.imDuration});

  factory _$LinkWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkWrapperImplFromJson(json);

  @override
  final LinkAttributes attributes;
  @override
  @JsonKey(name: 'im:duration')
  final ImDuration? imDuration;

  @override
  String toString() {
    return 'LinkWrapper(attributes: $attributes, imDuration: $imDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkWrapperImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.imDuration, imDuration) ||
                other.imDuration == imDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributes, imDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkWrapperImplCopyWith<_$LinkWrapperImpl> get copyWith =>
      __$$LinkWrapperImplCopyWithImpl<_$LinkWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkWrapperImplToJson(
      this,
    );
  }
}

abstract class _LinkWrapper implements LinkWrapper {
  const factory _LinkWrapper(
          {required final LinkAttributes attributes,
          @JsonKey(name: 'im:duration') final ImDuration? imDuration}) =
      _$LinkWrapperImpl;

  factory _LinkWrapper.fromJson(Map<String, dynamic> json) =
      _$LinkWrapperImpl.fromJson;

  @override
  LinkAttributes get attributes;
  @override
  @JsonKey(name: 'im:duration')
  ImDuration? get imDuration;
  @override
  @JsonKey(ignore: true)
  _$$LinkWrapperImplCopyWith<_$LinkWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImDuration _$ImDurationFromJson(Map<String, dynamic> json) {
  return _ImDuration.fromJson(json);
}

/// @nodoc
mixin _$ImDuration {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImDurationCopyWith<ImDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImDurationCopyWith<$Res> {
  factory $ImDurationCopyWith(
          ImDuration value, $Res Function(ImDuration) then) =
      _$ImDurationCopyWithImpl<$Res, ImDuration>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$ImDurationCopyWithImpl<$Res, $Val extends ImDuration>
    implements $ImDurationCopyWith<$Res> {
  _$ImDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImDurationImplCopyWith<$Res>
    implements $ImDurationCopyWith<$Res> {
  factory _$$ImDurationImplCopyWith(
          _$ImDurationImpl value, $Res Function(_$ImDurationImpl) then) =
      __$$ImDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$ImDurationImplCopyWithImpl<$Res>
    extends _$ImDurationCopyWithImpl<$Res, _$ImDurationImpl>
    implements _$$ImDurationImplCopyWith<$Res> {
  __$$ImDurationImplCopyWithImpl(
      _$ImDurationImpl _value, $Res Function(_$ImDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$ImDurationImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImDurationImpl implements _ImDuration {
  const _$ImDurationImpl({required this.label});

  factory _$ImDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImDurationImplFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'ImDuration(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImDurationImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImDurationImplCopyWith<_$ImDurationImpl> get copyWith =>
      __$$ImDurationImplCopyWithImpl<_$ImDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImDurationImplToJson(
      this,
    );
  }
}

abstract class _ImDuration implements ImDuration {
  const factory _ImDuration({required final String label}) = _$ImDurationImpl;

  factory _ImDuration.fromJson(Map<String, dynamic> json) =
      _$ImDurationImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$ImDurationImplCopyWith<_$ImDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LinkAttributes _$LinkAttributesFromJson(Map<String, dynamic> json) {
  return _LinkAttributes.fromJson(json);
}

/// @nodoc
mixin _$LinkAttributes {
  String get rel => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get href => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'im:assetType')
  String? get imAssetType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkAttributesCopyWith<LinkAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkAttributesCopyWith<$Res> {
  factory $LinkAttributesCopyWith(
          LinkAttributes value, $Res Function(LinkAttributes) then) =
      _$LinkAttributesCopyWithImpl<$Res, LinkAttributes>;
  @useResult
  $Res call(
      {String rel,
      String type,
      String href,
      String? title,
      @JsonKey(name: 'im:assetType') String? imAssetType});
}

/// @nodoc
class _$LinkAttributesCopyWithImpl<$Res, $Val extends LinkAttributes>
    implements $LinkAttributesCopyWith<$Res> {
  _$LinkAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rel = null,
    Object? type = null,
    Object? href = null,
    Object? title = freezed,
    Object? imAssetType = freezed,
  }) {
    return _then(_value.copyWith(
      rel: null == rel
          ? _value.rel
          : rel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imAssetType: freezed == imAssetType
          ? _value.imAssetType
          : imAssetType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkAttributesImplCopyWith<$Res>
    implements $LinkAttributesCopyWith<$Res> {
  factory _$$LinkAttributesImplCopyWith(_$LinkAttributesImpl value,
          $Res Function(_$LinkAttributesImpl) then) =
      __$$LinkAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rel,
      String type,
      String href,
      String? title,
      @JsonKey(name: 'im:assetType') String? imAssetType});
}

/// @nodoc
class __$$LinkAttributesImplCopyWithImpl<$Res>
    extends _$LinkAttributesCopyWithImpl<$Res, _$LinkAttributesImpl>
    implements _$$LinkAttributesImplCopyWith<$Res> {
  __$$LinkAttributesImplCopyWithImpl(
      _$LinkAttributesImpl _value, $Res Function(_$LinkAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rel = null,
    Object? type = null,
    Object? href = null,
    Object? title = freezed,
    Object? imAssetType = freezed,
  }) {
    return _then(_$LinkAttributesImpl(
      rel: null == rel
          ? _value.rel
          : rel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      imAssetType: freezed == imAssetType
          ? _value.imAssetType
          : imAssetType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkAttributesImpl implements _LinkAttributes {
  const _$LinkAttributesImpl(
      {required this.rel,
      required this.type,
      required this.href,
      this.title,
      @JsonKey(name: 'im:assetType') this.imAssetType});

  factory _$LinkAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkAttributesImplFromJson(json);

  @override
  final String rel;
  @override
  final String type;
  @override
  final String href;
  @override
  final String? title;
  @override
  @JsonKey(name: 'im:assetType')
  final String? imAssetType;

  @override
  String toString() {
    return 'LinkAttributes(rel: $rel, type: $type, href: $href, title: $title, imAssetType: $imAssetType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkAttributesImpl &&
            (identical(other.rel, rel) || other.rel == rel) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imAssetType, imAssetType) ||
                other.imAssetType == imAssetType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rel, type, href, title, imAssetType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkAttributesImplCopyWith<_$LinkAttributesImpl> get copyWith =>
      __$$LinkAttributesImplCopyWithImpl<_$LinkAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkAttributesImplToJson(
      this,
    );
  }
}

abstract class _LinkAttributes implements LinkAttributes {
  const factory _LinkAttributes(
          {required final String rel,
          required final String type,
          required final String href,
          final String? title,
          @JsonKey(name: 'im:assetType') final String? imAssetType}) =
      _$LinkAttributesImpl;

  factory _LinkAttributes.fromJson(Map<String, dynamic> json) =
      _$LinkAttributesImpl.fromJson;

  @override
  String get rel;
  @override
  String get type;
  @override
  String get href;
  @override
  String? get title;
  @override
  @JsonKey(name: 'im:assetType')
  String? get imAssetType;
  @override
  @JsonKey(ignore: true)
  _$$LinkAttributesImplCopyWith<_$LinkAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdWrapper _$IdWrapperFromJson(Map<String, dynamic> json) {
  return _IdWrapper.fromJson(json);
}

/// @nodoc
mixin _$IdWrapper {
  String get label => throw _privateConstructorUsedError;
  IdAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdWrapperCopyWith<IdWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdWrapperCopyWith<$Res> {
  factory $IdWrapperCopyWith(IdWrapper value, $Res Function(IdWrapper) then) =
      _$IdWrapperCopyWithImpl<$Res, IdWrapper>;
  @useResult
  $Res call({String label, IdAttributes attributes});

  $IdAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$IdWrapperCopyWithImpl<$Res, $Val extends IdWrapper>
    implements $IdWrapperCopyWith<$Res> {
  _$IdWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as IdAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdAttributesCopyWith<$Res> get attributes {
    return $IdAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdWrapperImplCopyWith<$Res>
    implements $IdWrapperCopyWith<$Res> {
  factory _$$IdWrapperImplCopyWith(
          _$IdWrapperImpl value, $Res Function(_$IdWrapperImpl) then) =
      __$$IdWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, IdAttributes attributes});

  @override
  $IdAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$IdWrapperImplCopyWithImpl<$Res>
    extends _$IdWrapperCopyWithImpl<$Res, _$IdWrapperImpl>
    implements _$$IdWrapperImplCopyWith<$Res> {
  __$$IdWrapperImplCopyWithImpl(
      _$IdWrapperImpl _value, $Res Function(_$IdWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_$IdWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as IdAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdWrapperImpl implements _IdWrapper {
  const _$IdWrapperImpl({required this.label, required this.attributes});

  factory _$IdWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdWrapperImplFromJson(json);

  @override
  final String label;
  @override
  final IdAttributes attributes;

  @override
  String toString() {
    return 'IdWrapper(label: $label, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdWrapperImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdWrapperImplCopyWith<_$IdWrapperImpl> get copyWith =>
      __$$IdWrapperImplCopyWithImpl<_$IdWrapperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdWrapperImplToJson(
      this,
    );
  }
}

abstract class _IdWrapper implements IdWrapper {
  const factory _IdWrapper(
      {required final String label,
      required final IdAttributes attributes}) = _$IdWrapperImpl;

  factory _IdWrapper.fromJson(Map<String, dynamic> json) =
      _$IdWrapperImpl.fromJson;

  @override
  String get label;
  @override
  IdAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$IdWrapperImplCopyWith<_$IdWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdAttributes _$IdAttributesFromJson(Map<String, dynamic> json) {
  return _IdAttributes.fromJson(json);
}

/// @nodoc
mixin _$IdAttributes {
  @JsonKey(name: 'im:id')
  String get imId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdAttributesCopyWith<IdAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdAttributesCopyWith<$Res> {
  factory $IdAttributesCopyWith(
          IdAttributes value, $Res Function(IdAttributes) then) =
      _$IdAttributesCopyWithImpl<$Res, IdAttributes>;
  @useResult
  $Res call({@JsonKey(name: 'im:id') String imId});
}

/// @nodoc
class _$IdAttributesCopyWithImpl<$Res, $Val extends IdAttributes>
    implements $IdAttributesCopyWith<$Res> {
  _$IdAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imId = null,
  }) {
    return _then(_value.copyWith(
      imId: null == imId
          ? _value.imId
          : imId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdAttributesImplCopyWith<$Res>
    implements $IdAttributesCopyWith<$Res> {
  factory _$$IdAttributesImplCopyWith(
          _$IdAttributesImpl value, $Res Function(_$IdAttributesImpl) then) =
      __$$IdAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'im:id') String imId});
}

/// @nodoc
class __$$IdAttributesImplCopyWithImpl<$Res>
    extends _$IdAttributesCopyWithImpl<$Res, _$IdAttributesImpl>
    implements _$$IdAttributesImplCopyWith<$Res> {
  __$$IdAttributesImplCopyWithImpl(
      _$IdAttributesImpl _value, $Res Function(_$IdAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imId = null,
  }) {
    return _then(_$IdAttributesImpl(
      imId: null == imId
          ? _value.imId
          : imId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdAttributesImpl implements _IdAttributes {
  const _$IdAttributesImpl({@JsonKey(name: 'im:id') required this.imId});

  factory _$IdAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdAttributesImplFromJson(json);

  @override
  @JsonKey(name: 'im:id')
  final String imId;

  @override
  String toString() {
    return 'IdAttributes(imId: $imId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdAttributesImpl &&
            (identical(other.imId, imId) || other.imId == imId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdAttributesImplCopyWith<_$IdAttributesImpl> get copyWith =>
      __$$IdAttributesImplCopyWithImpl<_$IdAttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdAttributesImplToJson(
      this,
    );
  }
}

abstract class _IdAttributes implements IdAttributes {
  const factory _IdAttributes(
          {@JsonKey(name: 'im:id') required final String imId}) =
      _$IdAttributesImpl;

  factory _IdAttributes.fromJson(Map<String, dynamic> json) =
      _$IdAttributesImpl.fromJson;

  @override
  @JsonKey(name: 'im:id')
  String get imId;
  @override
  @JsonKey(ignore: true)
  _$$IdAttributesImplCopyWith<_$IdAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryWrapper _$CategoryWrapperFromJson(Map<String, dynamic> json) {
  return _CategoryWrapper.fromJson(json);
}

/// @nodoc
mixin _$CategoryWrapper {
  CategoryAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryWrapperCopyWith<CategoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWrapperCopyWith<$Res> {
  factory $CategoryWrapperCopyWith(
          CategoryWrapper value, $Res Function(CategoryWrapper) then) =
      _$CategoryWrapperCopyWithImpl<$Res, CategoryWrapper>;
  @useResult
  $Res call({CategoryAttributes attributes});

  $CategoryAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CategoryWrapperCopyWithImpl<$Res, $Val extends CategoryWrapper>
    implements $CategoryWrapperCopyWith<$Res> {
  _$CategoryWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CategoryAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryAttributesCopyWith<$Res> get attributes {
    return $CategoryAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryWrapperImplCopyWith<$Res>
    implements $CategoryWrapperCopyWith<$Res> {
  factory _$$CategoryWrapperImplCopyWith(_$CategoryWrapperImpl value,
          $Res Function(_$CategoryWrapperImpl) then) =
      __$$CategoryWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryAttributes attributes});

  @override
  $CategoryAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$CategoryWrapperImplCopyWithImpl<$Res>
    extends _$CategoryWrapperCopyWithImpl<$Res, _$CategoryWrapperImpl>
    implements _$$CategoryWrapperImplCopyWith<$Res> {
  __$$CategoryWrapperImplCopyWithImpl(
      _$CategoryWrapperImpl _value, $Res Function(_$CategoryWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributes = null,
  }) {
    return _then(_$CategoryWrapperImpl(
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CategoryAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryWrapperImpl implements _CategoryWrapper {
  const _$CategoryWrapperImpl({required this.attributes});

  factory _$CategoryWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryWrapperImplFromJson(json);

  @override
  final CategoryAttributes attributes;

  @override
  String toString() {
    return 'CategoryWrapper(attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWrapperImpl &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWrapperImplCopyWith<_$CategoryWrapperImpl> get copyWith =>
      __$$CategoryWrapperImplCopyWithImpl<_$CategoryWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWrapperImplToJson(
      this,
    );
  }
}

abstract class _CategoryWrapper implements CategoryWrapper {
  const factory _CategoryWrapper(
      {required final CategoryAttributes attributes}) = _$CategoryWrapperImpl;

  factory _CategoryWrapper.fromJson(Map<String, dynamic> json) =
      _$CategoryWrapperImpl.fromJson;

  @override
  CategoryAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWrapperImplCopyWith<_$CategoryWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryAttributes _$CategoryAttributesFromJson(Map<String, dynamic> json) {
  return _CategoryAttributes.fromJson(json);
}

/// @nodoc
mixin _$CategoryAttributes {
  @JsonKey(name: 'im:id')
  String get imId => throw _privateConstructorUsedError;
  String get term => throw _privateConstructorUsedError;
  String get scheme => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAttributesCopyWith<CategoryAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAttributesCopyWith<$Res> {
  factory $CategoryAttributesCopyWith(
          CategoryAttributes value, $Res Function(CategoryAttributes) then) =
      _$CategoryAttributesCopyWithImpl<$Res, CategoryAttributes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'im:id') String imId,
      String term,
      String scheme,
      String label});
}

/// @nodoc
class _$CategoryAttributesCopyWithImpl<$Res, $Val extends CategoryAttributes>
    implements $CategoryAttributesCopyWith<$Res> {
  _$CategoryAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imId = null,
    Object? term = null,
    Object? scheme = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      imId: null == imId
          ? _value.imId
          : imId // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryAttributesImplCopyWith<$Res>
    implements $CategoryAttributesCopyWith<$Res> {
  factory _$$CategoryAttributesImplCopyWith(_$CategoryAttributesImpl value,
          $Res Function(_$CategoryAttributesImpl) then) =
      __$$CategoryAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'im:id') String imId,
      String term,
      String scheme,
      String label});
}

/// @nodoc
class __$$CategoryAttributesImplCopyWithImpl<$Res>
    extends _$CategoryAttributesCopyWithImpl<$Res, _$CategoryAttributesImpl>
    implements _$$CategoryAttributesImplCopyWith<$Res> {
  __$$CategoryAttributesImplCopyWithImpl(_$CategoryAttributesImpl _value,
      $Res Function(_$CategoryAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imId = null,
    Object? term = null,
    Object? scheme = null,
    Object? label = null,
  }) {
    return _then(_$CategoryAttributesImpl(
      imId: null == imId
          ? _value.imId
          : imId // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAttributesImpl implements _CategoryAttributes {
  const _$CategoryAttributesImpl(
      {@JsonKey(name: 'im:id') required this.imId,
      required this.term,
      required this.scheme,
      required this.label});

  factory _$CategoryAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAttributesImplFromJson(json);

  @override
  @JsonKey(name: 'im:id')
  final String imId;
  @override
  final String term;
  @override
  final String scheme;
  @override
  final String label;

  @override
  String toString() {
    return 'CategoryAttributes(imId: $imId, term: $term, scheme: $scheme, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAttributesImpl &&
            (identical(other.imId, imId) || other.imId == imId) &&
            (identical(other.term, term) || other.term == term) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imId, term, scheme, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAttributesImplCopyWith<_$CategoryAttributesImpl> get copyWith =>
      __$$CategoryAttributesImplCopyWithImpl<_$CategoryAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAttributesImplToJson(
      this,
    );
  }
}

abstract class _CategoryAttributes implements CategoryAttributes {
  const factory _CategoryAttributes(
      {@JsonKey(name: 'im:id') required final String imId,
      required final String term,
      required final String scheme,
      required final String label}) = _$CategoryAttributesImpl;

  factory _CategoryAttributes.fromJson(Map<String, dynamic> json) =
      _$CategoryAttributesImpl.fromJson;

  @override
  @JsonKey(name: 'im:id')
  String get imId;
  @override
  String get term;
  @override
  String get scheme;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAttributesImplCopyWith<_$CategoryAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReleaseDateWrapper _$ReleaseDateWrapperFromJson(Map<String, dynamic> json) {
  return _ReleaseDateWrapper.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDateWrapper {
  String get label => throw _privateConstructorUsedError;
  ReleaseDateAttributes get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateWrapperCopyWith<ReleaseDateWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateWrapperCopyWith<$Res> {
  factory $ReleaseDateWrapperCopyWith(
          ReleaseDateWrapper value, $Res Function(ReleaseDateWrapper) then) =
      _$ReleaseDateWrapperCopyWithImpl<$Res, ReleaseDateWrapper>;
  @useResult
  $Res call({String label, ReleaseDateAttributes attributes});

  $ReleaseDateAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ReleaseDateWrapperCopyWithImpl<$Res, $Val extends ReleaseDateWrapper>
    implements $ReleaseDateWrapperCopyWith<$Res> {
  _$ReleaseDateWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ReleaseDateAttributes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReleaseDateAttributesCopyWith<$Res> get attributes {
    return $ReleaseDateAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReleaseDateWrapperImplCopyWith<$Res>
    implements $ReleaseDateWrapperCopyWith<$Res> {
  factory _$$ReleaseDateWrapperImplCopyWith(_$ReleaseDateWrapperImpl value,
          $Res Function(_$ReleaseDateWrapperImpl) then) =
      __$$ReleaseDateWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, ReleaseDateAttributes attributes});

  @override
  $ReleaseDateAttributesCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ReleaseDateWrapperImplCopyWithImpl<$Res>
    extends _$ReleaseDateWrapperCopyWithImpl<$Res, _$ReleaseDateWrapperImpl>
    implements _$$ReleaseDateWrapperImplCopyWith<$Res> {
  __$$ReleaseDateWrapperImplCopyWithImpl(_$ReleaseDateWrapperImpl _value,
      $Res Function(_$ReleaseDateWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? attributes = null,
  }) {
    return _then(_$ReleaseDateWrapperImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ReleaseDateAttributes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseDateWrapperImpl implements _ReleaseDateWrapper {
  const _$ReleaseDateWrapperImpl(
      {required this.label, required this.attributes});

  factory _$ReleaseDateWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseDateWrapperImplFromJson(json);

  @override
  final String label;
  @override
  final ReleaseDateAttributes attributes;

  @override
  String toString() {
    return 'ReleaseDateWrapper(label: $label, attributes: $attributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseDateWrapperImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseDateWrapperImplCopyWith<_$ReleaseDateWrapperImpl> get copyWith =>
      __$$ReleaseDateWrapperImplCopyWithImpl<_$ReleaseDateWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseDateWrapperImplToJson(
      this,
    );
  }
}

abstract class _ReleaseDateWrapper implements ReleaseDateWrapper {
  const factory _ReleaseDateWrapper(
          {required final String label,
          required final ReleaseDateAttributes attributes}) =
      _$ReleaseDateWrapperImpl;

  factory _ReleaseDateWrapper.fromJson(Map<String, dynamic> json) =
      _$ReleaseDateWrapperImpl.fromJson;

  @override
  String get label;
  @override
  ReleaseDateAttributes get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseDateWrapperImplCopyWith<_$ReleaseDateWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReleaseDateAttributes _$ReleaseDateAttributesFromJson(
    Map<String, dynamic> json) {
  return _ReleaseDateAttributes.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDateAttributes {
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateAttributesCopyWith<ReleaseDateAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateAttributesCopyWith<$Res> {
  factory $ReleaseDateAttributesCopyWith(ReleaseDateAttributes value,
          $Res Function(ReleaseDateAttributes) then) =
      _$ReleaseDateAttributesCopyWithImpl<$Res, ReleaseDateAttributes>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$ReleaseDateAttributesCopyWithImpl<$Res,
        $Val extends ReleaseDateAttributes>
    implements $ReleaseDateAttributesCopyWith<$Res> {
  _$ReleaseDateAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReleaseDateAttributesImplCopyWith<$Res>
    implements $ReleaseDateAttributesCopyWith<$Res> {
  factory _$$ReleaseDateAttributesImplCopyWith(
          _$ReleaseDateAttributesImpl value,
          $Res Function(_$ReleaseDateAttributesImpl) then) =
      __$$ReleaseDateAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$ReleaseDateAttributesImplCopyWithImpl<$Res>
    extends _$ReleaseDateAttributesCopyWithImpl<$Res,
        _$ReleaseDateAttributesImpl>
    implements _$$ReleaseDateAttributesImplCopyWith<$Res> {
  __$$ReleaseDateAttributesImplCopyWithImpl(_$ReleaseDateAttributesImpl _value,
      $Res Function(_$ReleaseDateAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$ReleaseDateAttributesImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseDateAttributesImpl implements _ReleaseDateAttributes {
  const _$ReleaseDateAttributesImpl({required this.label});

  factory _$ReleaseDateAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseDateAttributesImplFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'ReleaseDateAttributes(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseDateAttributesImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseDateAttributesImplCopyWith<_$ReleaseDateAttributesImpl>
      get copyWith => __$$ReleaseDateAttributesImplCopyWithImpl<
          _$ReleaseDateAttributesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseDateAttributesImplToJson(
      this,
    );
  }
}

abstract class _ReleaseDateAttributes implements ReleaseDateAttributes {
  const factory _ReleaseDateAttributes({required final String label}) =
      _$ReleaseDateAttributesImpl;

  factory _ReleaseDateAttributes.fromJson(Map<String, dynamic> json) =
      _$ReleaseDateAttributesImpl.fromJson;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseDateAttributesImplCopyWith<_$ReleaseDateAttributesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
