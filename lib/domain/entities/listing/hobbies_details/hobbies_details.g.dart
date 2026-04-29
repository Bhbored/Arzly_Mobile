// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hobbies_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HobbiesDetails _$HobbiesDetailsFromJson(Map<String, dynamic> json) =>
    _HobbiesDetails(
      listingId: json['listingId'] as String?,
      collectibleType: $enumDecodeNullable(
        _$CollectibleTypeEnumMap,
        json['collectibleType'],
      ),
      condition: $enumDecodeNullable(
        _$HobbiesConditionEnumMap,
        json['condition'],
      ),
      instrumentType: $enumDecodeNullable(
        _$InstrumentTypeEnumMap,
        json['instrumentType'],
      ),
      bookType: $enumDecodeNullable(_$BookTypeEnumMap, json['bookType']),
      bookLanguage: $enumDecodeNullable(
        _$BookLanguageEnumMap,
        json['bookLanguage'],
      ),
      movieGenre: $enumDecodeNullable(_$MovieGenreEnumMap, json['movieGenre']),
      hobbyGameType: $enumDecodeNullable(
        _$HobbyGameTypeEnumMap,
        json['hobbyGameType'],
      ),
    );

Map<String, dynamic> _$HobbiesDetailsToJson(_HobbiesDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'collectibleType': _$CollectibleTypeEnumMap[instance.collectibleType],
      'condition': _$HobbiesConditionEnumMap[instance.condition],
      'instrumentType': _$InstrumentTypeEnumMap[instance.instrumentType],
      'bookType': _$BookTypeEnumMap[instance.bookType],
      'bookLanguage': _$BookLanguageEnumMap[instance.bookLanguage],
      'movieGenre': _$MovieGenreEnumMap[instance.movieGenre],
      'hobbyGameType': _$HobbyGameTypeEnumMap[instance.hobbyGameType],
    };

const _$CollectibleTypeEnumMap = {
  CollectibleType.currency: 'Currency',
  CollectibleType.figures: 'Figures',
  CollectibleType.gadgets: 'Gadgets',
  CollectibleType.pens: 'Pens',
  CollectibleType.stamps: 'Stamps',
  CollectibleType.other: 'Other',
};

const _$HobbiesConditionEnumMap = {
  HobbiesCondition.new_: 'New',
  HobbiesCondition.used: 'Used',
};

const _$InstrumentTypeEnumMap = {
  InstrumentType.djEquipment: 'DJEquipment',
  InstrumentType.guitarsAndStrings: 'GuitarsAndStrings',
  InstrumentType.percussionAndDrums: 'PercussionAndDrums',
  InstrumentType.pianosAndKeyboards: 'PianosAndKeyboards',
  InstrumentType.others: 'Others',
};

const _$BookTypeEnumMap = {
  BookType.academic: 'Academic',
  BookType.childrensBooks: 'ChildrensBooks',
  BookType.encyclopedia: 'Encyclopedia',
  BookType.magazines: 'Magazines',
  BookType.others: 'Others',
};

const _$BookLanguageEnumMap = {
  BookLanguage.arabic: 'Arabic',
  BookLanguage.french: 'French',
  BookLanguage.english: 'English',
  BookLanguage.other: 'Other',
};

const _$MovieGenreEnumMap = {
  MovieGenre.action: 'Action',
  MovieGenre.adventure: 'Adventure',
  MovieGenre.animation: 'Animation',
  MovieGenre.comedy: 'Comedy',
  MovieGenre.documentary: 'Documentary',
  MovieGenre.drama: 'Drama',
  MovieGenre.horror: 'Horror',
  MovieGenre.romance: 'Romance',
  MovieGenre.scienceFiction: 'ScienceFiction',
  MovieGenre.thriller: 'Thriller',
  MovieGenre.western: 'Western',
  MovieGenre.other: 'Other',
};

const _$HobbyGameTypeEnumMap = {
  HobbyGameType.boardGames: 'BoardGames',
  HobbyGameType.cardGames: 'CardGames',
  HobbyGameType.dronesAndRC: 'DronesAndRC',
  HobbyGameType.modelCars: 'ModelCars',
  HobbyGameType.puzzles: 'Puzzles',
  HobbyGameType.woodAndPlasticModelKits: 'WoodAndPlasticModelKits',
  HobbyGameType.other: 'Other',
};
