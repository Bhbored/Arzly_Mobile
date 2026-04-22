import 'package:arzly/core/enums/report_reason_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_report_add_request.freezed.dart';
part 'user_report_add_request.g.dart';

@freezed
sealed class UserReportAddRequest with _$UserReportAddRequest {
  const factory UserReportAddRequest({
    @JsonKey(name: 'ReporterId') required String reporterId,
    @JsonKey(name: 'ReportedUserId') required String reportedUserId,
    @JsonKey(name: 'ChatId') String? chatId,
    @JsonKey(name: 'Reason') required ReportReasonType reason,
    @JsonKey(name: 'Notes') String? notes,
  }) = _UserReportAddRequest;

  factory UserReportAddRequest.fromJson(Map<String, dynamic> json) =>
      _$UserReportAddRequestFromJson(json);
}
