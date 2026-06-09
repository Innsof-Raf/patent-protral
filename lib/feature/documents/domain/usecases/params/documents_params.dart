import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/documents_params.freezed.dart';

@freezed
sealed class DocumentsParams with _$DocumentsParams {
  const factory DocumentsParams.getDocuments({
    required int memberId,
    required String mobileNumber,
    required String token,
  }) = _GetDocumentsParams;
}
