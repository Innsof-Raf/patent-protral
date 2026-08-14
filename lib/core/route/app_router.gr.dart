// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddDocumentScreen]
class AddDocumentRoute extends PageRouteInfo<void> {
  const AddDocumentRoute({List<PageRouteInfo>? children})
    : super(AddDocumentRoute.name, initialChildren: children);

  static const String name = 'AddDocumentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddDocumentScreen();
    },
  );
}

/// generated route for
/// [AddMemberScreen]
class AddMemberRoute extends PageRouteInfo<AddMemberRouteArgs> {
  AddMemberRoute({Key? key, Member? member, List<PageRouteInfo>? children})
    : super(
        AddMemberRoute.name,
        args: AddMemberRouteArgs(key: key, member: member),
        initialChildren: children,
      );

  static const String name = 'AddMemberRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddMemberRouteArgs>(
        orElse: () => const AddMemberRouteArgs(),
      );
      return AddMemberScreen(key: args.key, member: args.member);
    },
  );
}

class AddMemberRouteArgs {
  const AddMemberRouteArgs({this.key, this.member});

  final Key? key;

  final Member? member;

  @override
  String toString() {
    return 'AddMemberRouteArgs{key: $key, member: $member}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddMemberRouteArgs) return false;
    return key == other.key && member == other.member;
  }

  @override
  int get hashCode => key.hashCode ^ member.hashCode;
}

/// generated route for
/// [BookAppointmentScreen]
class BookAppointmentRoute extends PageRouteInfo<BookAppointmentRouteArgs> {
  BookAppointmentRoute({
    Key? key,
    required int appointmentId,
    required Doctor doctor,
    List<PageRouteInfo>? children,
  }) : super(
         BookAppointmentRoute.name,
         args: BookAppointmentRouteArgs(
           key: key,
           appointmentId: appointmentId,
           doctor: doctor,
         ),
         initialChildren: children,
       );

  static const String name = 'BookAppointmentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookAppointmentRouteArgs>();
      return BookAppointmentScreen(
        key: args.key,
        appointmentId: args.appointmentId,
        doctor: args.doctor,
      );
    },
  );
}

class BookAppointmentRouteArgs {
  const BookAppointmentRouteArgs({
    this.key,
    required this.appointmentId,
    required this.doctor,
  });

  final Key? key;

  final int appointmentId;

  final Doctor doctor;

  @override
  String toString() {
    return 'BookAppointmentRouteArgs{key: $key, appointmentId: $appointmentId, doctor: $doctor}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BookAppointmentRouteArgs) return false;
    return key == other.key &&
        appointmentId == other.appointmentId &&
        doctor == other.doctor;
  }

  @override
  int get hashCode => key.hashCode ^ appointmentId.hashCode ^ doctor.hashCode;
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartScreen();
    },
  );
}

/// generated route for
/// [DoctorDetailScreen]
class DoctorDetailRoute extends PageRouteInfo<void> {
  const DoctorDetailRoute({List<PageRouteInfo>? children})
    : super(DoctorDetailRoute.name, initialChildren: children);

  static const String name = 'DoctorDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DoctorDetailScreen();
    },
  );
}

/// generated route for
/// [DoctorsScreen]
class DoctorsRoute extends PageRouteInfo<DoctorsRouteArgs> {
  DoctorsRoute({
    Key? key,
    Speciality? speciality,
    List<Doctor>? initialDoctors,
    List<PageRouteInfo>? children,
  }) : super(
         DoctorsRoute.name,
         args: DoctorsRouteArgs(
           key: key,
           speciality: speciality,
           initialDoctors: initialDoctors,
         ),
         initialChildren: children,
       );

  static const String name = 'DoctorsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DoctorsRouteArgs>(
        orElse: () => const DoctorsRouteArgs(),
      );
      return DoctorsScreen(
        key: args.key,
        speciality: args.speciality,
        initialDoctors: args.initialDoctors,
      );
    },
  );
}

class DoctorsRouteArgs {
  const DoctorsRouteArgs({this.key, this.speciality, this.initialDoctors});

  final Key? key;

  final Speciality? speciality;

  final List<Doctor>? initialDoctors;

  @override
  String toString() {
    return 'DoctorsRouteArgs{key: $key, speciality: $speciality, initialDoctors: $initialDoctors}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DoctorsRouteArgs) return false;
    return key == other.key &&
        speciality == other.speciality &&
        const ListEquality<Doctor>().equals(
          initialDoctors,
          other.initialDoctors,
        );
  }

  @override
  int get hashCode =>
      key.hashCode ^
      speciality.hashCode ^
      const ListEquality<Doctor>().hash(initialDoctors);
}

/// generated route for
/// [DocumentsScreen]
class DocumentsRoute extends PageRouteInfo<void> {
  const DocumentsRoute({List<PageRouteInfo>? children})
    : super(DocumentsRoute.name, initialChildren: children);

  static const String name = 'DocumentsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DocumentsScreen();
    },
  );
}

/// generated route for
/// [EditProfileDetailsScreen]
class EditProfileDetailsRoute extends PageRouteInfo<void> {
  const EditProfileDetailsRoute({List<PageRouteInfo>? children})
    : super(EditProfileDetailsRoute.name, initialChildren: children);

  static const String name = 'EditProfileDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditProfileDetailsScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LabItemDetailScreen]
class LabItemDetailRoute extends PageRouteInfo<LabItemDetailRouteArgs> {
  LabItemDetailRoute({
    Key? key,
    required int idItem,
    List<PageRouteInfo>? children,
  }) : super(
         LabItemDetailRoute.name,
         args: LabItemDetailRouteArgs(key: key, idItem: idItem),
         initialChildren: children,
       );

  static const String name = 'LabItemDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LabItemDetailRouteArgs>();
      return LabItemDetailScreen(key: args.key, idItem: args.idItem);
    },
  );
}

class LabItemDetailRouteArgs {
  const LabItemDetailRouteArgs({this.key, required this.idItem});

  final Key? key;

  final int idItem;

  @override
  String toString() {
    return 'LabItemDetailRouteArgs{key: $key, idItem: $idItem}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LabItemDetailRouteArgs) return false;
    return key == other.key && idItem == other.idItem;
  }

  @override
  int get hashCode => key.hashCode ^ idItem.hashCode;
}

/// generated route for
/// [LabScreen]
class LabRoute extends PageRouteInfo<void> {
  const LabRoute({List<PageRouteInfo>? children})
    : super(LabRoute.name, initialChildren: children);

  static const String name = 'LabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LabScreen();
    },
  );
}

/// generated route for
/// [LogInScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LogInScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
    },
  );
}

/// generated route for
/// [MedicalInsurancesScreen]
class MedicalInsuranceRoute extends PageRouteInfo<void> {
  const MedicalInsuranceRoute({List<PageRouteInfo>? children})
    : super(MedicalInsuranceRoute.name, initialChildren: children);

  static const String name = 'MedicalInsuranceRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MedicalInsurancesScreen();
    },
  );
}

/// generated route for
/// [MemberDetailsScreen]
class MemberDetailsRoute extends PageRouteInfo<MemberDetailsRouteArgs> {
  MemberDetailsRoute({
    Key? key,
    required int memberId,
    List<PageRouteInfo>? children,
  }) : super(
         MemberDetailsRoute.name,
         args: MemberDetailsRouteArgs(key: key, memberId: memberId),
         initialChildren: children,
       );

  static const String name = 'MemberDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MemberDetailsRouteArgs>();
      return MemberDetailsScreen(key: args.key, memberId: args.memberId);
    },
  );
}

class MemberDetailsRouteArgs {
  const MemberDetailsRouteArgs({this.key, required this.memberId});

  final Key? key;

  final int memberId;

  @override
  String toString() {
    return 'MemberDetailsRouteArgs{key: $key, memberId: $memberId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MemberDetailsRouteArgs) return false;
    return key == other.key && memberId == other.memberId;
  }

  @override
  int get hashCode => key.hashCode ^ memberId.hashCode;
}

/// generated route for
/// [MemberSelectionScreen]
class MemberSelectionRoute extends PageRouteInfo<void> {
  const MemberSelectionRoute({List<PageRouteInfo>? children})
    : super(MemberSelectionRoute.name, initialChildren: children);

  static const String name = 'MemberSelectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MemberSelectionScreen();
    },
  );
}

/// generated route for
/// [MembersScreen]
class MembersRoute extends PageRouteInfo<void> {
  const MembersRoute({List<PageRouteInfo>? children})
    : super(MembersRoute.name, initialChildren: children);

  static const String name = 'MembersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MembersScreen();
    },
  );
}

/// generated route for
/// [MyAppointmentScreen]
class MyAppointmentsRoute extends PageRouteInfo<void> {
  const MyAppointmentsRoute({List<PageRouteInfo>? children})
    : super(MyAppointmentsRoute.name, initialChildren: children);

  static const String name = 'MyAppointmentsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MyAppointmentScreen();
    },
  );
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class MyProfileRoute extends PageRouteInfo<void> {
  const MyProfileRoute({List<PageRouteInfo>? children})
    : super(MyProfileRoute.name, initialChildren: children);

  static const String name = 'MyProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [RadiologyScansScreen]
class RadiologyScansRoute extends PageRouteInfo<void> {
  const RadiologyScansRoute({List<PageRouteInfo>? children})
    : super(RadiologyScansRoute.name, initialChildren: children);

  static const String name = 'RadiologyScansRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RadiologyScansScreen();
    },
  );
}

/// generated route for
/// [ReportScreen]
class ReportRoute extends PageRouteInfo<ReportRouteArgs> {
  ReportRoute({
    Key? key,
    required String doctorName,
    required String pdfUrl,
    required DateTime consultedDateTime,
    List<PageRouteInfo>? children,
  }) : super(
         ReportRoute.name,
         args: ReportRouteArgs(
           key: key,
           doctorName: doctorName,
           pdfUrl: pdfUrl,
           consultedDateTime: consultedDateTime,
         ),
         initialChildren: children,
       );

  static const String name = 'ReportRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReportRouteArgs>();
      return ReportScreen(
        key: args.key,
        doctorName: args.doctorName,
        pdfUrl: args.pdfUrl,
        consultedDateTime: args.consultedDateTime,
      );
    },
  );
}

class ReportRouteArgs {
  const ReportRouteArgs({
    this.key,
    required this.doctorName,
    required this.pdfUrl,
    required this.consultedDateTime,
  });

  final Key? key;

  final String doctorName;

  final String pdfUrl;

  final DateTime consultedDateTime;

  @override
  String toString() {
    return 'ReportRouteArgs{key: $key, doctorName: $doctorName, pdfUrl: $pdfUrl, consultedDateTime: $consultedDateTime}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReportRouteArgs) return false;
    return key == other.key &&
        doctorName == other.doctorName &&
        pdfUrl == other.pdfUrl &&
        consultedDateTime == other.consultedDateTime;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      doctorName.hashCode ^
      pdfUrl.hashCode ^
      consultedDateTime.hashCode;
}

/// generated route for
/// [ReportsScreen]
class ReportsRoute extends PageRouteInfo<void> {
  const ReportsRoute({List<PageRouteInfo>? children})
    : super(ReportsRoute.name, initialChildren: children);

  static const String name = 'ReportsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ReportsScreen();
    },
  );
}

/// generated route for
/// [SetPasswordScreen]
class SetPasswordRoute extends PageRouteInfo<void> {
  const SetPasswordRoute({List<PageRouteInfo>? children})
    : super(SetPasswordRoute.name, initialChildren: children);

  static const String name = 'SetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SetPasswordScreen();
    },
  );
}

/// generated route for
/// [SpecialityScreen]
class SpecialityRoute extends PageRouteInfo<void> {
  const SpecialityRoute({List<PageRouteInfo>? children})
    : super(SpecialityRoute.name, initialChildren: children);

  static const String name = 'SpecialityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpecialityScreen();
    },
  );
}
