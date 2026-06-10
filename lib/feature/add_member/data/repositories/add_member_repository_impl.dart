import 'package:dartz/dartz.dart';
import 'package:patient_portal/core/error/failures.dart';
import 'package:patient_portal/feature/add_member/data/datasources/add_member_remote_data_source.dart';
import 'package:patient_portal/feature/add_member/domain/repositories/add_member_repository.dart';
import 'package:patient_portal/feature/add_member/domain/usecases/params/params.dart';
import 'package:patient_portal/feature/profile/domain/entities/member.dart';
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
  Future<Either<Failure, Member>> addMember(AddMemberParams params) async {
    try {
      final result = await remoteDataSource.addMember(params);
      return Right(result.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Member>> updateInsurance(
    AddMemberParams params,
  ) async {
    try {
      final result = await remoteDataSource.updateInsurance(params);
      return Right(result.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
