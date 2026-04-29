import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum BookType {
  @JsonValue('Academic')
  academic,
  @JsonValue('ChildrensBooks')
  childrensBooks,
  @JsonValue('Encyclopedia')
  encyclopedia,
  @JsonValue('Magazines')
  magazines,
  @JsonValue('Others')
  others,
}
