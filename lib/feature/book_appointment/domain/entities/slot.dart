class Slot {
  final String id;
  final String label;
  final DateTime appdttm;
  final bool isBooked;

  const Slot({
    required this.id,
    required this.label,
    required this.appdttm,
    required this.isBooked,
  });

  Slot copyWith({
    String? id,
    String? label,
    DateTime? appdttm,
    bool? isBooked,
  }) {
    return Slot(
      id: id ?? this.id,
      label: label ?? this.label,
      appdttm: appdttm ?? this.appdttm,
      isBooked: isBooked ?? this.isBooked,
    );
  }
}
