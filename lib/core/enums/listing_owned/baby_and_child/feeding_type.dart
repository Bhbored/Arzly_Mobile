import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum FeedingType {
  @JsonValue('Breastfeeding')
  breastfeeding,
  @JsonValue('Kitchenware')
  kitchenware,
  @JsonValue('Sterilizers')
  sterilizers,
  @JsonValue('OtherItems')
  otherItems,
}
