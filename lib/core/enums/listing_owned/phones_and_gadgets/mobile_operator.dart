import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum MobileOperator {
  @JsonValue('Alfa')
  alfa,
  @JsonValue('Touch')
  touch,
  @JsonValue('Other')
  other,
}

extension MobileOperatorDisplay on MobileOperator {
  String get label => switch (this) {
        MobileOperator.alfa => 'Alfa',
        MobileOperator.touch => 'Touch',
        MobileOperator.other => 'Other',
      };
}
