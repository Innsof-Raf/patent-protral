import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:patient_portal/core/resources/api_helpers.dart';
import 'package:patient_portal/feature/home/domain/entities/tree_detail.dart';

part 'generated/tree_detail_model.freezed.dart';
part 'generated/tree_detail_model.g.dart';

@freezed
sealed class TreeDetailModel with _$TreeDetailModel {
  const TreeDetailModel._();

  const factory TreeDetailModel({
    @JsonKey(name: 'id_treedetail', fromJson: intFromJson)
    required int idTreedetail,
    @Default('')
    @JsonKey(name: 'tree_name', fromJson: stringFromJson)
    String treeName,
    @Default(0) @JsonKey(name: 'level', fromJson: intFromJson) int level,
    @Default(0) @JsonKey(name: 'seq_no', fromJson: intFromJson) int seqNo,
    @Default(0) @JsonKey(name: 'parent', fromJson: intFromJson) int parent,
    @Default('')
    @JsonKey(name: 'tree_path', fromJson: stringFromJson)
    String treePath,
  }) = _TreeDetailModel;

  factory TreeDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TreeDetailModelFromJson(json);

  TreeDetail toEntity() => TreeDetail(
    idTreedetail: idTreedetail,
    treeName: treeName,
    level: level,
    seqNo: seqNo,
    parent: parent,
    treePath: treePath,
  );
}
