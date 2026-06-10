class MyAppointment {
  final int id;
  final int memberId;
  final String memberName;
  final String email;
  final String mobileNumber;
  final String departName;
  final String doctorId;
  final String doctorName;
  final String speciality;
  final String branch;
  final String profileUrl;
  final String busunitName;
  final DateTime appointmentDateTime;
  final int idDoctor;
  final bool isCanceling;

  const MyAppointment({
    required this.id,
    required this.memberId,
    required this.memberName,
    required this.email,
    required this.mobileNumber,
    required this.departName,
    required this.doctorId,
    required this.doctorName,
    required this.speciality,
    required this.branch,
    required this.profileUrl,
    required this.busunitName,
    required this.appointmentDateTime,
    required this.idDoctor,
    this.isCanceling = false,
  });

  MyAppointment copyWith({
    int? id,
    int? memberId,
    String? memberName,
    String? email,
    String? mobileNumber,
    String? departName,
    String? doctorId,
    String? doctorName,
    String? speciality,
    String? branch,
    String? profileUrl,
    String? busunitName,
    DateTime? appointmentDateTime,
    int? idDoctor,
    bool? isCanceling,
  }) {
    return MyAppointment(
      id: id ?? this.id,
      memberId: memberId ?? this.memberId,
      memberName: memberName ?? this.memberName,
      email: email ?? this.email,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      departName: departName ?? this.departName,
      doctorId: doctorId ?? this.doctorId,
      doctorName: doctorName ?? this.doctorName,
      speciality: speciality ?? this.speciality,
      branch: branch ?? this.branch,
      profileUrl: profileUrl ?? this.profileUrl,
      busunitName: busunitName ?? this.busunitName,
      appointmentDateTime: appointmentDateTime ?? this.appointmentDateTime,
      idDoctor: idDoctor ?? this.idDoctor,
      isCanceling: isCanceling ?? this.isCanceling,
    );
  }
}
