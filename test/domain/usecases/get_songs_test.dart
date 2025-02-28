import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:interviewpractical/core/errors/failures.dart';
import 'package:interviewpractical/domain/entities/song.dart';
import 'package:interviewpractical/domain/repositories/song_repository.dart';
import 'package:interviewpractical/domain/usecases/get_songs.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// Generate mock for SongRepository
@GenerateNiceMocks([MockSpec<SongRepository>()])
import 'get_songs_test.mocks.dart';

void main() {
  late GetSongs usecase;
  late MockSongRepository mockRepository;

  setUp(() {
    mockRepository = MockSongRepository();
    usecase = GetSongs(mockRepository);
  });

  final tSongs = [
    Song(
      id: '1797195895',
      title: 'Man In the Sky',
      artist: 'Tom MacDonald',
      albumImage: 'https://some-image-1.jpg',
      previewUrl: 'https://some-audio-preview-1.m4a',
      releaseDate: '2025-02-21',
      genre: 'Country',
    ),
    Song(
      id: '1698723327',
      title: 'Pink Pony Club',
      artist: 'Chappell Roan',
      albumImage: 'https://some-image-2.jpg',
      previewUrl: 'https://some-audio-preview-2.m4a',
      releaseDate: '2020-04-03',
      genre: 'Pop',
    ),
  ];

  test('should get songs from the repository', () async {
    // Arrange
    when(mockRepository.getSongs(forceRefresh: anyNamed('forceRefresh')))
        .thenAnswer((_) async => Right(tSongs));

    // Act
    final result = await usecase(const GetSongsParams(forceRefresh: false));

    // Assert
    expect(result, Right(tSongs));
    verify(mockRepository.getSongs(forceRefresh: false)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return a failure when repository returns a failure', () async {
    // Arrange
    when(mockRepository.getSongs(forceRefresh: anyNamed('forceRefresh')))
        .thenAnswer((_) async => Left(ServerFailure(message: 'Server error')));

    // Act
    final result = await usecase(const GetSongsParams(forceRefresh: false));

    // Assert
    expect(result, Left(ServerFailure(message: 'Server error')));
    verify(mockRepository.getSongs(forceRefresh: false)).called(1);
    verifyNoMoreInteractions(mockRepository);
  });
}
