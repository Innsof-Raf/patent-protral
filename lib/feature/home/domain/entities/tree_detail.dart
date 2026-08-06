import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tree_detail.freezed.dart';

@freezed
sealed class TreeDetail with _$TreeDetail {
  const factory TreeDetail({
    required int idTreedetail,
    required String treeName,
    required int level,
    required int seqNo,
    required int parent,
    required String treePath,
  }) = _TreeDetail;
}
