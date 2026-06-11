import 'dart:convert';

Map<String, dynamic> serviceRequest({
  required String type,
  Object? content,
}) {
  return {
    'type': type,
    'content': content is String ? content : jsonEncode(content ?? {}),
  };
}

dynamic decodeResponseData(dynamic data) {
  if (data is String && data.isNotEmpty) {
    return jsonDecode(data);
  }
  return data;
}

int intFromJson(Object? value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value?.toString() ?? '') ?? 0;
}

double doubleFromJson(Object? value) {
  if (value is double) return value;
  if (value is num) return value.toDouble();
  return double.tryParse(value?.toString() ?? '') ?? 0;
}

String stringFromJson(Object? value) => value?.toString() ?? '';

bool boolFromJson(Object? value) {
  if (value is bool) return value;
  final normalized = value?.toString().toLowerCase();
  return normalized == 'true' || normalized == '1';
}
