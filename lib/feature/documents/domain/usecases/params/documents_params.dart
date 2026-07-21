import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/documents_params.freezed.dart';
part 'generated/documents_params.g.dart';

@freezed
sealed class DocumentsParams with _$DocumentsParams {
  const factory DocumentsParams.getDocuments({
    @JsonKey(name: 'id_customer') required int memberId,
    @JsonKey(name: 'mobile_number') required String mobileNumber,
    @JsonKey(includeToJson: false) required String token,
  }) = _GetDocumentsParams;

  factory DocumentsParams.fromJson(Map<String, dynamic> json) =>
      _$DocumentsParamsFromJson(json);
}
