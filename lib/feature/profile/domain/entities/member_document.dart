import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/member_document.freezed.dart';

@freezed
sealed class MemberDocument with _$MemberDocument {
  const factory MemberDocument({
    required int idDocument,
    required String docName,
    required DateTime expDate,
    required String seqNo,
  }) = _MemberDocument;
}
