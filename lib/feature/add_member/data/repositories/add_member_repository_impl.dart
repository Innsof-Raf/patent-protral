import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_member/data/datasources/add_member_remote_data_source.dart';
import 'package:patient_portal/feature/add_member/domain/repositories/add_member_repository.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/data/models/member_model.dart';
import 'package:patient_portal/resources/common_models/insurance/insurance_model.dart';

class AddMemberRepositoryImpl implements AddMemberRepository {
  final AddMemberRemoteDataSource remoteDataSource;

  AddMemberRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<InsuranceModel>>> getInsuranceTypes({
    required String token,
  }) async {
    try {
      final result = await remoteDataSource.getInsuranceTypes(token: token);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MemberModel>> addMember(AddMemberParams params) async {
    try {
      final result = await remoteDataSource.addMember(params);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MemberModel>> updateInsurance(
    AddMemberParams params,
  ) async {
    try {
      final result = await remoteDataSource.updateInsurance(params);
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
