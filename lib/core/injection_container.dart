import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/add_document/data/datasources/add_document_remote_data_source.dart';
import 'package:patient_portal/feature/add_document/data/repositories/add_document_repository_impl.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/get_document_types_usecase.dart';
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_member/data/datasources/add_member_remote_data_source.dart';
import 'package:patient_portal/feature/add_member/data/repositories/add_member_repository_impl.dart';
import 'package:patient_portal/feature/add_member/domain/repositories/add_member_repository.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/add_member_usecase.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/get_insurances_usecase.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/update_insurance_usecase.dart';
import 'package:patient_portal/feature/add_member/presentation/bloc/add_member_bloc.dart';
import 'package:patient_portal/feature/book_appointment/data/datasources/book_appointment_remote_data_source.dart';
import 'package:patient_portal/feature/book_appointment/data/repositories/book_appointment_repository_impl.dart';
import 'package:patient_portal/feature/book_appointment/domain/repositories/book_appointment_repository.dart';
import 'package:patient_portal/feature/book_appointment/domain/usecases/book_appointment_usecase.dart';
import 'package:patient_portal/feature/book_appointment/presentation/bloc/book_appointment_bloc.dart';
import 'package:patient_portal/feature/doctors/data/datasources/doctor_remote_data_source.dart';
import 'package:patient_portal/feature/doctors/data/repositories/doctor_repository_impl.dart';
import 'package:patient_portal/feature/doctors/domain/repositories/doctor_repository.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/get_available_doctors_usecase.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/documents/data/datasources/documents_remote_data_source.dart';
import 'package:patient_portal/feature/documents/data/repositories/documents_repository_impl.dart';
import 'package:patient_portal/feature/documents/domain/repositories/documents_repository.dart';
import 'package:patient_portal/feature/documents/domain/usecases/get_documents_usecase.dart';
import 'package:patient_portal/feature/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:patient_portal/feature/home/data/datasources/home_remote_data_source.dart';
import 'package:patient_portal/feature/home/data/repositories/home_repository_impl.dart';
import 'package:patient_portal/feature/home/domain/repositories/home_repository.dart';
import 'package:patient_portal/feature/home/domain/usecases/get_home_data_usecase.dart';
import 'package:patient_portal/feature/home/presentation/bloc/home_bloc/home_bloc.dart';
import 'package:patient_portal/feature/lab/data/datasources/lab_remote_data_source.dart';
import 'package:patient_portal/feature/lab/data/repositories/lab_repository_impl.dart';
import 'package:patient_portal/feature/lab/domain/repositories/lab_repository.dart';
import 'package:patient_portal/feature/lab/domain/usecases/get_item_detail_usecase.dart';
import 'package:patient_portal/feature/lab/domain/usecases/get_items_usecase.dart';
import 'package:patient_portal/feature/lab/domain/usecases/get_packages_usecase.dart';
import 'package:patient_portal/feature/lab/domain/usecases/update_item_in_cart_usecase.dart';
import 'package:patient_portal/feature/lab/presentation/bloc/items_bloc/items_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/data/datasources/login_remote_data_source.dart';
import 'package:patient_portal/feature/login/data/repositories/login_repository_impl.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/generate_otp_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/login_with_password_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/verify_otp_usecase.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc/otp_verification_bloc.dart';
import 'package:patient_portal/feature/member_details/presentation/bloc/member_detail_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/delete_member_bloc/delete_member_bloc.dart';
import 'package:patient_portal/feature/members/presentation/bloc/member_search_bloc/member_search_bloc.dart';
import 'package:patient_portal/feature/my_appointments/presentation/bloc/my_appointments_bloc/my_appointments_bloc.dart';
import 'package:patient_portal/feature/my_appointments/data/repositories/my_appointments_repository_impl.dart';
import 'package:patient_portal/feature/my_appointments/domain/repositories/my_appointments_repository.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/cancel_appointment_usecase.dart';
import 'package:patient_portal/feature/my_appointments/domain/usecases/get_my_appointments_usecase.dart';
import 'package:patient_portal/feature/profile/data/datasources/profile_remote_data_source.dart';
import 'package:patient_portal/feature/profile/data/repositories/profile_repository_impl.dart';
import 'package:patient_portal/feature/profile/domain/repositories/profile_repository.dart';
import 'package:patient_portal/feature/profile/domain/usecases/add_profile_member_usecase.dart';
import 'package:patient_portal/feature/profile/domain/usecases/change_member_insurance_details_usecase.dart';
import 'package:patient_portal/feature/profile/domain/usecases/get_member_detail_usecase.dart';
import 'package:patient_portal/feature/profile/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:patient_portal/feature/reports/data/datasources/reports_remote_data_source.dart';
import 'package:patient_portal/feature/reports/data/repositories/reports_repository_impl.dart';
import 'package:patient_portal/feature/reports/domain/repositories/reports_repository.dart';
import 'package:patient_portal/feature/reports/domain/usecases/reports_usecase.dart';
import 'package:patient_portal/feature/reports/presentation/bloc/reports_bloc.dart';
import 'package:patient_portal/feature/set_password/data/datasources/set_password_remote_data_source.dart';
import 'package:patient_portal/feature/set_password/data/repositories/set_password_repository_impl.dart';
import 'package:patient_portal/feature/set_password/domain/repositories/set_password_repository.dart';
import 'package:patient_portal/feature/set_password/domain/usecases/change_password_usecase.dart';
import 'package:patient_portal/feature/set_password/presentation/bloc/change_password_bloc.dart';
import 'package:patient_portal/feature/speciality/data/datasources/speciality_remote_data_source.dart';
import 'package:patient_portal/feature/speciality/data/repositories/speciality_repository_impl.dart';
import 'package:patient_portal/feature/speciality/domain/repositories/speciality_repository.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/fetch_specialities_usecase.dart';
import 'package:patient_portal/feature/speciality/domain/usecases/search_specialities_usecase.dart';
import 'package:patient_portal/feature/speciality/presentation/bloc/speciality_bloc/speciality_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Add document
  // Bloc
  sl.registerFactory(() => AddDocumentBloc(getDocumentTypesUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetDocumentTypesUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AddDocumentRepository>(
    () => AddDocumentRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<AddDocumentRemoteDataSource>(
    () => AddDocumentRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Login
  // Bloc
  sl.registerFactory(() => OtpGenerationBloc(generateOtpUseCase: sl()));
  sl.registerFactory(() => OtpVerificationBloc(verifyOtpUseCase: sl()));
  sl.registerFactory(
    () => LoginWithPasswordBloc(loginWithPasswordUseCase: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GenerateOtpUseCase(sl()));
  sl.registerLazySingleton(() => VerifyOtpUseCase(sl()));
  sl.registerLazySingleton(() => LoginWithPasswordUseCase(sl()));

  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Doctors
  // Bloc
  sl.registerFactory(() => DoctorBloc(getAvailableDoctorsUseCase: sl()));
  sl.registerFactory(() => SearchDoctorBloc());

  // Use cases
  sl.registerLazySingleton(() => GetAvailableDoctorsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<DoctorRepository>(
    () => DoctorRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<DoctorRemoteDataSource>(
    () => DoctorRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Add Member / Insurance
  // Bloc
  sl.registerFactory(
    () => AddMemberBloc(
      getInsurancesUseCase: sl(),
      addMemberUseCase: sl(),
      updateInsuranceUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetInsurancesUseCase(sl()));
  sl.registerLazySingleton(() => AddMemberUseCase(sl()));
  sl.registerLazySingleton(() => UpdateInsuranceUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AddMemberRepository>(
    () => AddMemberRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<AddMemberRemoteDataSource>(
    () => AddMemberRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Book Appointment
  // Bloc
  sl.registerFactory(
    () => BookAppointmentBloc(
      bookAppointmentUseCase: sl(),
      rescheduleAppointmentUseCase: sl(),
      getAvailableSlotsUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => BookAppointmentUseCase(sl()));
  sl.registerLazySingleton(() => RescheduleAppointmentUseCase(sl()));
  sl.registerLazySingleton(() => GetAvailableSlotsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<BookAppointmentRepository>(
    () => BookAppointmentRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<BookAppointmentRemoteDataSource>(
    () => BookAppointmentRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Documents
  // Bloc
  sl.registerFactory(() => DocumentsBloc(getDocumentsUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetDocumentsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<DocumentsRepository>(
    () => DocumentsRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<DocumentsRemoteDataSource>(
    () => DocumentsRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Home
  // Bloc
  sl.registerFactory(() => HomeBloc(getHomeDataUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetHomeDataUseCase(sl()));

  // Repository
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<HomeRemoteDataSource>(
    () => HomeRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Lab
  // Bloc
  sl.registerFactory(
    () => ItemsBloc(getItemsUseCase: sl(), updateItemInCartUseCase: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => GetItemsUseCase(sl()));
  sl.registerLazySingleton(() => UpdateItemInCartUseCase(sl()));
  sl.registerLazySingleton(() => GetItemDetailUseCase(sl()));
  sl.registerLazySingleton(() => GetPackagesUseCase(sl()));

  // Repository
  sl.registerLazySingleton<LabRepository>(
    () => LabRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<LabRemoteDataSource>(
    () => LabRemoteDataSourceImpl(client: sl()),
  );

  //! Features - Members
  // Bloc
  sl.registerFactory(() => DeleteMemberBloc());
  sl.registerFactory(() => MemberSearchBloc());

  //! Features - Member Details
  // Bloc
  sl.registerFactory(() => MemberDetailBloc());

  //! Features - My Appointments
  // Bloc
  sl.registerFactory(
    () => MyAppointmentsBloc(
      getMyAppointmentsUseCase: sl(),
      cancelAppointmentUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetMyAppointmentsUseCase(sl()));
  sl.registerLazySingleton(() => CancelAppointmentUseCase(sl()));

  // Repository
  sl.registerLazySingleton<MyAppointmentsRepository>(
    () => MyAppointmentsRepositoryImpl(),
  );

  //! Features - Profile
  // Bloc
  sl.registerFactory(
    () => UserBloc(
      addProfileMemberUseCase: sl(),
      changeMemberInsuranceDetailsUseCase: sl(),
      getMemberDetailUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => AddProfileMemberUseCase(sl()));
  sl.registerLazySingleton(() => ChangeMemberInsuranceDetailsUseCase(sl()));
  sl.registerLazySingleton(() => GetMemberDetailUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(),
  );

  //! Features - Reports
  // Bloc
  sl.registerFactory(() => ReportsBloc(reportsUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => ReportsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ReportsRepository>(
    () => ReportsRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<ReportsRemoteDataSource>(
    () => ReportsRemoteDataSourceImpl(),
  );

  //! Features - Set Password
  // Bloc
  sl.registerFactory(() => ChangePasswordBloc(changePasswordUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => ChangePasswordUseCase(sl()));

  // Repository
  sl.registerLazySingleton<SetPasswordRepository>(
    () => SetPasswordRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<SetPasswordRemoteDataSource>(
    () => SetPasswordRemoteDataSourceImpl(),
  );

  //! Features - Speciality
  // Bloc
  sl.registerFactory(
    () => SpecialityBloc(
      fetchSpecialitiesUseCase: sl(),
      searchSpecialitiesUseCase: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => FetchSpecialitiesUseCase(sl()));
  sl.registerLazySingleton(() => SearchSpecialitiesUseCase(sl()));

  // Repository
  sl.registerLazySingleton<SpecialityRepository>(
    () => SpecialityRepositoryImpl(remoteDataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<SpecialityRemoteDataSource>(
    () => SpecialityRemoteDataSourceImpl(),
  );

  //! External
  sl.registerLazySingleton(() => http.Client());
}
