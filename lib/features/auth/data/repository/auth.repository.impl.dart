import 'package:blog_app/core/errors/exceptions.dart';
import 'package:blog_app/features/auth/data/datasources/auth.data_source.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/repository/auth.repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  const AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, String>> signinWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signupWithEmailPassword(
      {required String Name,
      required String email,
      required String password}) async {
    try {
      final userId = remoteDataSource.signupwithEmailPassword(
          name: Name, email: email, password: password);
      return right(userId as String); //success
    } on ServerException catch (e) {
      //throw ServerException(message: e.toString()); //failure
      return left(Failure(message: e.message));
    }
  }
}
