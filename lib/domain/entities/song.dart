import 'package:equatable/equatable.dart';

/// Domain entity representing a song
class Song extends Equatable {
  final String id;
  final String title;
  final String artist;
  final String albumImage;
  final String previewUrl;
  final String releaseDate;
  final String genre;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.albumImage,
    required this.previewUrl,
    required this.releaseDate,
    required this.genre,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    artist,
    albumImage,
    previewUrl,
    releaseDate,
    genre,
  ];
}