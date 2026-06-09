import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/profile/data/datasources/profile_remote_data_source.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/feature/profile/domain/repositories/profile_repository.dart';
import 'package:patient_portal/feature/profile/domain/usecases/params/profile_params.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, MemberModel>> addMember(ProfileParams params) async {
    try {
      final result = await remoteDataSource.addMember(params);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MemberModel>> changeMemberInsuranceDetails(
    ProfileParams params,
  ) async {
    try {
      final result = await remoteDataSource.changeMemberInsuranceDetails(
        params,
      );
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MemberModel>> getMemberDetail(
    ProfileParams params,
  ) async {
    try {
      final result = await remoteDataSource.getMemberDetail(params);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
