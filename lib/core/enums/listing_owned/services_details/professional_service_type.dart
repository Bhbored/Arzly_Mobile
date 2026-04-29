import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum ProfessionalServiceType {
  @JsonValue('GraphicDesign')
  graphicDesign,
  @JsonValue('WebDevelopment')
  webDevelopment,
  @JsonValue('Translation')
  translation,
  @JsonValue('Writing')
  writing,
  @JsonValue('Accounting')
  accounting,
  @JsonValue('LegalServices')
  legalServices,
  @JsonValue('Consulting')
  consulting,
  @JsonValue('Other')
  other,
}
