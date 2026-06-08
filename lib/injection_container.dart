import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:patient_portal/feature/add_document/presentation/bloc/add_document_bloc.dart';
import 'package:patient_portal/feature/add_document/data/datasources/add_document_remote_data_source.dart';
import 'package:patient_portal/feature/add_document/data/repositories/add_document_repository_impl.dart';
import 'package:patient_portal/feature/add_document/domain/repositories/add_document_repository.dart';
import 'package:patient_portal/feature/add_document/domain/usecases/get_document_types_usecase.dart';
import 'package:patient_portal/feature/doctors/data/datasources/doctor_remote_data_source.dart';
import 'package:patient_portal/feature/doctors/data/repositories/doctor_repository_impl.dart';
import 'package:patient_portal/feature/doctors/domain/repositories/doctor_repository.dart';
import 'package:patient_portal/feature/doctors/domain/usecases/get_available_doctors_usecase.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/doctor_bloc.dart';
import 'package:patient_portal/feature/doctors/presentation/bloc/search_doctor_bloc.dart';
import 'package:patient_portal/feature/login/data/datasources/login_remote_data_source.dart';
import 'package:patient_portal/feature/login/data/repositories/login_repository_impl.dart';
import 'package:patient_portal/feature/login/blocs/login_with_password_bloc/login_with_password_bloc.dart';
import 'package:patient_portal/feature/login/domain/repositories/login_repository.dart';
import 'package:patient_portal/feature/login/domain/usecases/generate_otp_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/login_with_password_usecase.dart';
import 'package:patient_portal/feature/login/domain/usecases/verify_otp_usecase.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_generation_bloc.dart';
import 'package:patient_portal/feature/login/presentation/bloc/otp_verification_bloc.dart';

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

  //! External
  sl.registerLazySingleton(() => http.Client());
}
