import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

import '../../domain/entities/song.dart';

part 'song_model.freezed.dart';
part 'song_model.g.dart';

/// Root response from iTunes API
@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required Feed feed,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}

/// Feed containing list of songs
@freezed
class Feed with _$Feed {
  const factory Feed({
    required List<SongEntry> entry,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}

/// Entry for a song from iTunes API
@freezed
class SongEntry with _$SongEntry {
  const factory SongEntry({
    @JsonKey(name: 'im:name') required NameWrapper imName,
    @JsonKey(name: 'im:image') required List<ImageWrapper> imImage,
    @JsonKey(name: 'im:artist') required ArtistWrapper imArtist,
    required List<LinkWrapper> link,
    required IdWrapper id,
    required CategoryWrapper category,
    @JsonKey(name: 'im:releaseDate') required ReleaseDateWrapper imReleaseDate,
    required TitleWrapper title,
  }) = _SongEntry;

  factory SongEntry.fromJson(Map<String, dynamic> json) =>
      _$SongEntryFromJson(json);
}

/// Wrapper for name values
@freezed
class NameWrapper with _$NameWrapper {
  const factory NameWrapper({
    required String label,
  }) = _NameWrapper;

  factory NameWrapper.fromJson(Map<String, dynamic> json) =>
      _$NameWrapperFromJson(json);
}

/// Wrapper for title values
@freezed
class TitleWrapper with _$TitleWrapper {
  const factory TitleWrapper({
    required String label,
  }) = _TitleWrapper;

  factory TitleWrapper.fromJson(Map<String, dynamic> json) =>
      _$TitleWrapperFromJson(json);
}

/// Wrapper for image values
@freezed
class ImageWrapper with _$ImageWrapper {
  const factory ImageWrapper({
    required String label,
    required ImageAttributes attributes,
  }) = _ImageWrapper;

  factory ImageWrapper.fromJson(Map<String, dynamic> json) =>
      _$ImageWrapperFromJson(json);
}

/// Image attributes
@freezed
class ImageAttributes with _$ImageAttributes {
  const factory ImageAttributes({
    required String height,
  }) = _ImageAttributes;

  factory ImageAttributes.fromJson(Map<String, dynamic> json) =>
      _$ImageAttributesFromJson(json);
}

/// Wrapper for artist values
@freezed
class ArtistWrapper with _$ArtistWrapper {
  const factory ArtistWrapper({
    required String label,
    required ArtistAttributes attributes,
  }) = _ArtistWrapper;

  factory ArtistWrapper.fromJson(Map<String, dynamic> json) =>
      _$ArtistWrapperFromJson(json);
}

/// Artist attributes
@freezed
class ArtistAttributes with _$ArtistAttributes {
  const factory ArtistAttributes({
    required String href,
  }) = _ArtistAttributes;

  factory ArtistAttributes.fromJson(Map<String, dynamic> json) =>
      _$ArtistAttributesFromJson(json);
}

/// Wrapper for link values
@freezed
class LinkWrapper with _$LinkWrapper {
  const factory LinkWrapper({
    required LinkAttributes attributes,
    @JsonKey(name: 'im:duration') ImDuration? imDuration,
  }) = _LinkWrapper;

  factory LinkWrapper.fromJson(Map<String, dynamic> json) =>
      _$LinkWrapperFromJson(json);
}

/// Im:duration property in links
@freezed
class ImDuration with _$ImDuration {
  const factory ImDuration({
    required String label,
  }) = _ImDuration;

  factory ImDuration.fromJson(Map<String, dynamic> json) =>
      _$ImDurationFromJson(json);
}

/// Link attributes
@freezed
class LinkAttributes with _$LinkAttributes {
  const factory LinkAttributes({
    required String rel,
    required String type,
    required String href,
    String? title,
    @JsonKey(name: 'im:assetType') String? imAssetType,
  }) = _LinkAttributes;

  factory LinkAttributes.fromJson(Map<String, dynamic> json) =>
      _$LinkAttributesFromJson(json);
}

/// Wrapper for ID values
@freezed
class IdWrapper with _$IdWrapper {
  const factory IdWrapper({
    required String label,
    required IdAttributes attributes,
  }) = _IdWrapper;

  factory IdWrapper.fromJson(Map<String, dynamic> json) =>
      _$IdWrapperFromJson(json);
}

/// ID attributes
@freezed
class IdAttributes with _$IdAttributes {
  const factory IdAttributes({
    @JsonKey(name: 'im:id') required String imId,
  }) = _IdAttributes;

  factory IdAttributes.fromJson(Map<String, dynamic> json) =>
      _$IdAttributesFromJson(json);
}

/// Wrapper for category values
@freezed
class CategoryWrapper with _$CategoryWrapper {
  const factory CategoryWrapper({
    required CategoryAttributes attributes,
  }) = _CategoryWrapper;

  factory CategoryWrapper.fromJson(Map<String, dynamic> json) =>
      _$CategoryWrapperFromJson(json);
}

/// Category attributes
@freezed
class CategoryAttributes with _$CategoryAttributes {
  const factory CategoryAttributes({
    @JsonKey(name: 'im:id') required String imId,
    required String term,
    required String scheme,
    required String label,
  }) = _CategoryAttributes;

  factory CategoryAttributes.fromJson(Map<String, dynamic> json) =>
      _$CategoryAttributesFromJson(json);
}

/// Wrapper for release date values
@freezed
class ReleaseDateWrapper with _$ReleaseDateWrapper {
  const factory ReleaseDateWrapper({
    required String label,
    required ReleaseDateAttributes attributes,
  }) = _ReleaseDateWrapper;

  factory ReleaseDateWrapper.fromJson(Map<String, dynamic> json) =>
      _$ReleaseDateWrapperFromJson(json);
}

/// Release date attributes
@freezed
class ReleaseDateAttributes with _$ReleaseDateAttributes {
  const factory ReleaseDateAttributes({
    required String label,
  }) = _ReleaseDateAttributes;

  factory ReleaseDateAttributes.fromJson(Map<String, dynamic> json) =>
      _$ReleaseDateAttributesFromJson(json);
}

/// Database model for storing songs
@Collection()
class SongModel {
  SongModel({
    this.id = Isar.autoIncrement,
    required this.songId,
    required this.title,
    required this.artist,
    required this.albumImageUrl,
    required this.previewUrl,
    required this.releaseDate,
    required this.genre,
  });

  final Id id;
  final String songId;
  final String title;
  final String artist;
  final String albumImageUrl;
  final String previewUrl;
  final String releaseDate;
  final String genre;

  /// Creates a SongModel from a SongEntry API response
  factory SongModel.fromEntry(SongEntry entry) {
    // Find preview URL in links
    String previewUrl = '';
    for (var link in entry.link) {
      if (link.attributes.title == 'Preview') {
        previewUrl = link.attributes.href;
        break;
      }
    }

    // Get the largest image URL
    String largestImageUrl = '';
    if (entry.imImage.isNotEmpty) {
      final sortedImages = List<ImageWrapper>.from(entry.imImage)
        ..sort((a, b) =>
            int.parse(b.attributes.height) - int.parse(a.attributes.height));
      largestImageUrl = sortedImages.first.label;
    }

    return SongModel(
      songId: entry.id.attributes.imId,
      title: entry.imName.label,
      artist: entry.imArtist.label,
      albumImageUrl: largestImageUrl,
      previewUrl: previewUrl,
      releaseDate: entry.imReleaseDate.attributes.label,
      genre: entry.category.attributes.label,
    );
  }

  /// Converts to a domain entity
  Song toDomain() {
    return Song(
      id: songId,
      title: title,
      artist: artist,
      albumImage: albumImageUrl,
      previewUrl: previewUrl,
      releaseDate: releaseDate,
      genre: genre,
    );
  }

  /// Creates a copy with the given fields replaced
  SongModel copyWith({
    Id? id,
    String? songId,
    String? title,
    String? artist,
    String? albumImageUrl,
    String? previewUrl,
    String? releaseDate,
    String? genre,
  }) {
    return SongModel(
      id: id ?? this.id,
      songId: songId ?? this.songId,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      albumImageUrl: albumImageUrl ?? this.albumImageUrl,
      previewUrl: previewUrl ?? this.previewUrl,
      releaseDate: releaseDate ?? this.releaseDate,
      genre: genre ?? this.genre,
    );
  }
}
