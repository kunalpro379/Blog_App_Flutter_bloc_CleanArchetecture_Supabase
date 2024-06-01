import 'package:fpdart/fpdart.dart';

import '../../../../core/errors/failures.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signupWithEmailPassword(
      {required String Name, required String email, required String password});
  Future<Either<Failure, String>> signinWithEmailPassword(
      {required String email, required String password});
}
