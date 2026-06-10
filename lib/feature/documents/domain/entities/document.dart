class Document {
  final int docId;
  final int memberId;
  final DateTime expireDate;
  final String docName;
  final String docType;

  const Document({
    required this.docId,
    required this.memberId,
    required this.expireDate,
    required this.docName,
    required this.docType,
  });
}
