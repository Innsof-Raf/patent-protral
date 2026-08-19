class ClinicLocation {
  const ClinicLocation({
    required this.id,
    required this.name,
    required this.address,
    required this.hours,
    required this.phone,
    required this.imageUrl,
    required this.distanceLabel,
  });

  final String id;
  final String name;
  final String address;
  final String hours;
  final String phone;
  final String imageUrl;
  final String distanceLabel;
}
