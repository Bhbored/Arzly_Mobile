import 'package:arzly/core/enums/listing_owned/leisure_and_interests/book_language.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/book_type.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/collectible_type.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/hobbies_condition.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/hobby_game_type.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/instrument_type.dart';
import 'package:arzly/core/enums/listing_owned/leisure_and_interests/movie_genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hobbies_details.freezed.dart';
part 'hobbies_details.g.dart';

@freezed
sealed class HobbiesDetails with _$HobbiesDetails {
  const factory HobbiesDetails({
    String? listingId,
    CollectibleType? collectibleType,
    HobbiesCondition? condition,
    InstrumentType? instrumentType,
    BookType? bookType,
    BookLanguage? bookLanguage,
    MovieGenre? movieGenre,
    HobbyGameType? hobbyGameType,
  }) = _HobbiesDetails;

  factory HobbiesDetails.fromJson(Map<String, dynamic> json) =>
      _$HobbiesDetailsFromJson(json);
}
