// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSongModelCollection on Isar {
  IsarCollection<SongModel> get songModels => this.collection();
}

const SongModelSchema = CollectionSchema(
  name: r'SongModel',
  id: 5804096728791725223,
  properties: {
    r'albumImageUrl': PropertySchema(
      id: 0,
      name: r'albumImageUrl',
      type: IsarType.string,
    ),
    r'artist': PropertySchema(
      id: 1,
      name: r'artist',
      type: IsarType.string,
    ),
    r'genre': PropertySchema(
      id: 2,
      name: r'genre',
      type: IsarType.string,
    ),
    r'previewUrl': PropertySchema(
      id: 3,
      name: r'previewUrl',
      type: IsarType.string,
    ),
    r'releaseDate': PropertySchema(
      id: 4,
      name: r'releaseDate',
      type: IsarType.string,
    ),
    r'songId': PropertySchema(
      id: 5,
      name: r'songId',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _songModelEstimateSize,
  serialize: _songModelSerialize,
  deserialize: _songModelDeserialize,
  deserializeProp: _songModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _songModelGetId,
  getLinks: _songModelGetLinks,
  attach: _songModelAttach,
  version: '3.1.0+1',
);

int _songModelEstimateSize(
  SongModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.albumImageUrl.length * 3;
  bytesCount += 3 + object.artist.length * 3;
  bytesCount += 3 + object.genre.length * 3;
  bytesCount += 3 + object.previewUrl.length * 3;
  bytesCount += 3 + object.releaseDate.length * 3;
  bytesCount += 3 + object.songId.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _songModelSerialize(
  SongModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.albumImageUrl);
  writer.writeString(offsets[1], object.artist);
  writer.writeString(offsets[2], object.genre);
  writer.writeString(offsets[3], object.previewUrl);
  writer.writeString(offsets[4], object.releaseDate);
  writer.writeString(offsets[5], object.songId);
  writer.writeString(offsets[6], object.title);
}

SongModel _songModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SongModel(
    albumImageUrl: reader.readString(offsets[0]),
    artist: reader.readString(offsets[1]),
    genre: reader.readString(offsets[2]),
    id: id,
    previewUrl: reader.readString(offsets[3]),
    releaseDate: reader.readString(offsets[4]),
    songId: reader.readString(offsets[5]),
    title: reader.readString(offsets[6]),
  );
  return object;
}

P _songModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _songModelGetId(SongModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _songModelGetLinks(SongModel object) {
  return [];
}

void _songModelAttach(IsarCollection<dynamic> col, Id id, SongModel object) {}

extension SongModelQueryWhereSort
    on QueryBuilder<SongModel, SongModel, QWhere> {
  QueryBuilder<SongModel, SongModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SongModelQueryWhere
    on QueryBuilder<SongModel, SongModel, QWhereClause> {
  QueryBuilder<SongModel, SongModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SongModelQueryFilter
    on QueryBuilder<SongModel, SongModel, QFilterCondition> {
  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'albumImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'albumImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'albumImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'albumImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      albumImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'albumImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'artist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'artist',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'artist',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'artist',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> artistIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'artist',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genre',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genre',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genre',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genre',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> genreIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genre',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      previewUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'previewUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      previewUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'previewUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> previewUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'previewUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      previewUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      previewUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'previewUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      releaseDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'releaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      releaseDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'releaseDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> releaseDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'releaseDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      releaseDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition>
      releaseDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'releaseDate',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'songId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'songId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'songId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'songId',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> songIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'songId',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension SongModelQueryObject
    on QueryBuilder<SongModel, SongModel, QFilterCondition> {}

extension SongModelQueryLinks
    on QueryBuilder<SongModel, SongModel, QFilterCondition> {}

extension SongModelQuerySortBy on QueryBuilder<SongModel, SongModel, QSortBy> {
  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByAlbumImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByAlbumImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByArtist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByArtistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortBySongId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'songId', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortBySongIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'songId', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension SongModelQuerySortThenBy
    on QueryBuilder<SongModel, SongModel, QSortThenBy> {
  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByAlbumImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByAlbumImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'albumImageUrl', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByArtist() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByArtistDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'artist', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByGenre() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByGenreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'genre', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByPreviewUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByPreviewUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'previewUrl', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByReleaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByReleaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'releaseDate', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenBySongId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'songId', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenBySongIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'songId', Sort.desc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<SongModel, SongModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension SongModelQueryWhereDistinct
    on QueryBuilder<SongModel, SongModel, QDistinct> {
  QueryBuilder<SongModel, SongModel, QDistinct> distinctByAlbumImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'albumImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctByArtist(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'artist', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctByGenre(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genre', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctByPreviewUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'previewUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctByReleaseDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'releaseDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctBySongId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'songId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SongModel, SongModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension SongModelQueryProperty
    on QueryBuilder<SongModel, SongModel, QQueryProperty> {
  QueryBuilder<SongModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> albumImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'albumImageUrl');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> artistProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'artist');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> genreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genre');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> previewUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'previewUrl');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> releaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'releaseDate');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> songIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'songId');
    });
  }

  QueryBuilder<SongModel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseImpl _$$ApiResponseImplFromJson(Map<String, dynamic> json) =>
    _$ApiResponseImpl(
      feed: Feed.fromJson(json['feed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiResponseImplToJson(_$ApiResponseImpl instance) =>
    <String, dynamic>{
      'feed': instance.feed,
    };

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      entry: (json['entry'] as List<dynamic>)
          .map((e) => SongEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'entry': instance.entry,
    };

_$SongEntryImpl _$$SongEntryImplFromJson(Map<String, dynamic> json) =>
    _$SongEntryImpl(
      imName: NameWrapper.fromJson(json['im:name'] as Map<String, dynamic>),
      imImage: (json['im:image'] as List<dynamic>)
          .map((e) => ImageWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
      imArtist:
          ArtistWrapper.fromJson(json['im:artist'] as Map<String, dynamic>),
      link: (json['link'] as List<dynamic>)
          .map((e) => LinkWrapper.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: IdWrapper.fromJson(json['id'] as Map<String, dynamic>),
      category:
          CategoryWrapper.fromJson(json['category'] as Map<String, dynamic>),
      imReleaseDate: ReleaseDateWrapper.fromJson(
          json['im:releaseDate'] as Map<String, dynamic>),
      title: TitleWrapper.fromJson(json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SongEntryImplToJson(_$SongEntryImpl instance) =>
    <String, dynamic>{
      'im:name': instance.imName,
      'im:image': instance.imImage,
      'im:artist': instance.imArtist,
      'link': instance.link,
      'id': instance.id,
      'category': instance.category,
      'im:releaseDate': instance.imReleaseDate,
      'title': instance.title,
    };

_$NameWrapperImpl _$$NameWrapperImplFromJson(Map<String, dynamic> json) =>
    _$NameWrapperImpl(
      label: json['label'] as String,
    );

Map<String, dynamic> _$$NameWrapperImplToJson(_$NameWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

_$TitleWrapperImpl _$$TitleWrapperImplFromJson(Map<String, dynamic> json) =>
    _$TitleWrapperImpl(
      label: json['label'] as String,
    );

Map<String, dynamic> _$$TitleWrapperImplToJson(_$TitleWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

_$ImageWrapperImpl _$$ImageWrapperImplFromJson(Map<String, dynamic> json) =>
    _$ImageWrapperImpl(
      label: json['label'] as String,
      attributes:
          ImageAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageWrapperImplToJson(_$ImageWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'attributes': instance.attributes,
    };

_$ImageAttributesImpl _$$ImageAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageAttributesImpl(
      height: json['height'] as String,
    );

Map<String, dynamic> _$$ImageAttributesImplToJson(
        _$ImageAttributesImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
    };

_$ArtistWrapperImpl _$$ArtistWrapperImplFromJson(Map<String, dynamic> json) =>
    _$ArtistWrapperImpl(
      label: json['label'] as String,
      attributes:
          ArtistAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ArtistWrapperImplToJson(_$ArtistWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'attributes': instance.attributes,
    };

_$ArtistAttributesImpl _$$ArtistAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$ArtistAttributesImpl(
      href: json['href'] as String,
    );

Map<String, dynamic> _$$ArtistAttributesImplToJson(
        _$ArtistAttributesImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

_$LinkWrapperImpl _$$LinkWrapperImplFromJson(Map<String, dynamic> json) =>
    _$LinkWrapperImpl(
      attributes:
          LinkAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      imDuration: json['im:duration'] == null
          ? null
          : ImDuration.fromJson(json['im:duration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LinkWrapperImplToJson(_$LinkWrapperImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'im:duration': instance.imDuration,
    };

_$ImDurationImpl _$$ImDurationImplFromJson(Map<String, dynamic> json) =>
    _$ImDurationImpl(
      label: json['label'] as String,
    );

Map<String, dynamic> _$$ImDurationImplToJson(_$ImDurationImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
    };

_$LinkAttributesImpl _$$LinkAttributesImplFromJson(Map<String, dynamic> json) =>
    _$LinkAttributesImpl(
      rel: json['rel'] as String,
      type: json['type'] as String,
      href: json['href'] as String,
      title: json['title'] as String?,
      imAssetType: json['im:assetType'] as String?,
    );

Map<String, dynamic> _$$LinkAttributesImplToJson(
        _$LinkAttributesImpl instance) =>
    <String, dynamic>{
      'rel': instance.rel,
      'type': instance.type,
      'href': instance.href,
      'title': instance.title,
      'im:assetType': instance.imAssetType,
    };

_$IdWrapperImpl _$$IdWrapperImplFromJson(Map<String, dynamic> json) =>
    _$IdWrapperImpl(
      label: json['label'] as String,
      attributes:
          IdAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IdWrapperImplToJson(_$IdWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'attributes': instance.attributes,
    };

_$IdAttributesImpl _$$IdAttributesImplFromJson(Map<String, dynamic> json) =>
    _$IdAttributesImpl(
      imId: json['im:id'] as String,
    );

Map<String, dynamic> _$$IdAttributesImplToJson(_$IdAttributesImpl instance) =>
    <String, dynamic>{
      'im:id': instance.imId,
    };

_$CategoryWrapperImpl _$$CategoryWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryWrapperImpl(
      attributes: CategoryAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryWrapperImplToJson(
        _$CategoryWrapperImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

_$CategoryAttributesImpl _$$CategoryAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAttributesImpl(
      imId: json['im:id'] as String,
      term: json['term'] as String,
      scheme: json['scheme'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$$CategoryAttributesImplToJson(
        _$CategoryAttributesImpl instance) =>
    <String, dynamic>{
      'im:id': instance.imId,
      'term': instance.term,
      'scheme': instance.scheme,
      'label': instance.label,
    };

_$ReleaseDateWrapperImpl _$$ReleaseDateWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$ReleaseDateWrapperImpl(
      label: json['label'] as String,
      attributes: ReleaseDateAttributes.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReleaseDateWrapperImplToJson(
        _$ReleaseDateWrapperImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'attributes': instance.attributes,
    };

_$ReleaseDateAttributesImpl _$$ReleaseDateAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$ReleaseDateAttributesImpl(
      label: json['label'] as String,
    );

Map<String, dynamic> _$$ReleaseDateAttributesImplToJson(
        _$ReleaseDateAttributesImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
    };
