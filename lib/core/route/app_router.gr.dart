// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

class AddDocumentRoute extends PageRouteInfo<void> {
  const AddDocumentRoute({List<PageRouteInfo>? children})
    : super(AddDocumentRoute.name, initialChildren: children);

  static const String name = 'AddDocumentRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const AddDocumentScreen(),
  );
}

class AddMemberRoute extends PageRouteInfo<AddMemberRouteArgs> {
  AddMemberRoute({Key? key, Member? member, List<PageRouteInfo>? children})
    : super(
        AddMemberRoute.name,
        args: AddMemberRouteArgs(key: key, member: member),
        initialChildren: children,
      );

  static const String name = 'AddMemberRoute';

  static final PageInfo page = PageInfo(
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
}

class BookAppointmentRoute extends PageRouteInfo<BookAppointmentRouteArgs> {
  BookAppointmentRoute({
    Key? key,
    required int appointmentId,
    required String doctorImage,
    required String doctorName,
    required int idDoctor,
    List<PageRouteInfo>? children,
  }) : super(
         BookAppointmentRoute.name,
         args: BookAppointmentRouteArgs(
           key: key,
           appointmentId: appointmentId,
           doctorImage: doctorImage,
           doctorName: doctorName,
           idDoctor: idDoctor,
         ),
         initialChildren: children,
       );

  static const String name = 'BookAppointmentRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookAppointmentRouteArgs>();
      return BookAppointmentScreen(
        key: args.key,
        appointmentId: args.appointmentId,
        doctorImage: args.doctorImage,
        doctorName: args.doctorName,
        idDoctor: args.idDoctor,
      );
    },
  );
}

class BookAppointmentRouteArgs {
  const BookAppointmentRouteArgs({
    this.key,
    required this.appointmentId,
    required this.doctorImage,
    required this.doctorName,
    required this.idDoctor,
  });

  final Key? key;
  final int appointmentId;
  final String doctorImage;
  final String doctorName;
  final int idDoctor;
}

class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const CartScreen(),
  );
}

class DoctorDetailRoute extends PageRouteInfo<void> {
  const DoctorDetailRoute({List<PageRouteInfo>? children})
    : super(DoctorDetailRoute.name, initialChildren: children);

  static const String name = 'DoctorDetailRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const DoctorDetailScreen(),
  );
}

class DoctorsRoute extends PageRouteInfo<DoctorsRouteArgs> {
  DoctorsRoute({
    Key? key,
    required int idSpecilaity,
    List<PageRouteInfo>? children,
  }) : super(
         DoctorsRoute.name,
         args: DoctorsRouteArgs(key: key, idSpecilaity: idSpecilaity),
         initialChildren: children,
       );

  static const String name = 'DoctorsRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DoctorsRouteArgs>();
      return DoctorsScreen(key: args.key, idSpecilaity: args.idSpecilaity);
    },
  );
}

class DoctorsRouteArgs {
  const DoctorsRouteArgs({this.key, required this.idSpecilaity});

  final Key? key;
  final int idSpecilaity;
}

class DocumentsRoute extends PageRouteInfo<void> {
  const DocumentsRoute({List<PageRouteInfo>? children})
    : super(DocumentsRoute.name, initialChildren: children);

  static const String name = 'DocumentsRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const DocumentsScreen(),
  );
}

class EditProfileDetailsRoute extends PageRouteInfo<void> {
  const EditProfileDetailsRoute({List<PageRouteInfo>? children})
    : super(EditProfileDetailsRoute.name, initialChildren: children);

  static const String name = 'EditProfileDetailsRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const EditProfileDetailsScreen(),
  );
}

class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const HomeScreen(),
  );
}

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

  static final PageInfo page = PageInfo(
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
}

class LabRoute extends PageRouteInfo<void> {
  const LabRoute({List<PageRouteInfo>? children})
    : super(LabRoute.name, initialChildren: children);

  static const String name = 'LabRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const LabScreen(),
  );
}

class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const LogInScreen(),
  );
}

class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const MainScreen(),
  );
}

class MedicalInsuranceRoute extends PageRouteInfo<void> {
  const MedicalInsuranceRoute({List<PageRouteInfo>? children})
    : super(MedicalInsuranceRoute.name, initialChildren: children);

  static const String name = 'MedicalInsuranceRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const MedicalInsurancesScreen(),
  );
}

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

  static final PageInfo page = PageInfo(
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
}

class MembersRoute extends PageRouteInfo<void> {
  const MembersRoute({List<PageRouteInfo>? children})
    : super(MembersRoute.name, initialChildren: children);

  static const String name = 'MembersRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const MembersScreen(),
  );
}

class MyAppointmentsRoute extends PageRouteInfo<void> {
  const MyAppointmentsRoute({List<PageRouteInfo>? children})
    : super(MyAppointmentsRoute.name, initialChildren: children);

  static const String name = 'MyAppointmentsRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const MyAppointmentScreen(),
  );
}

class MyProfileRoute extends PageRouteInfo<void> {
  const MyProfileRoute({List<PageRouteInfo>? children})
    : super(MyProfileRoute.name, initialChildren: children);

  static const String name = 'MyProfileRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const ProfileScreen(),
  );
}

class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
    : super(NotificationRoute.name, initialChildren: children);

  static const String name = 'NotificationRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const Notificationscreen(),
  );
}

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

  static final PageInfo page = PageInfo(
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
}

class ReportsRoute extends PageRouteInfo<void> {
  const ReportsRoute({List<PageRouteInfo>? children})
    : super(ReportsRoute.name, initialChildren: children);

  static const String name = 'ReportsRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const ReportsScreen(),
  );
}

class SetPasswordRoute extends PageRouteInfo<void> {
  const SetPasswordRoute({List<PageRouteInfo>? children})
    : super(SetPasswordRoute.name, initialChildren: children);

  static const String name = 'SetPasswordRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const SetPasswordScreen(),
  );
}

class SpecialityRoute extends PageRouteInfo<void> {
  const SpecialityRoute({List<PageRouteInfo>? children})
    : super(SpecialityRoute.name, initialChildren: children);

  static const String name = 'SpecialityRoute';

  static final PageInfo page = PageInfo(
    name,
    builder: (data) => const SpecialityScreen(),
  );
}
