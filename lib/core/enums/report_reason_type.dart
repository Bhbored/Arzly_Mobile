import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ReportReasonType {
  @JsonValue('Spam')
  spam,
  @JsonValue('Harassment')
  harassment,
  @JsonValue('Fraud')
  fraud,
  @JsonValue('InappropriateContent')
  inappropriateContent,
  @JsonValue('FakeListing')
  fakeListing,
  @JsonValue('Other')
  other,
}
