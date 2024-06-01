import 'package:blog_app/core/errors/failures.dart';
import 'package:blog_app/features/auth/domain/repository/auth.repository.dart';

import 'package:fpdart/src/either.dart';

import '../../../core/usecases/usecase.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepository authRepository;
  const UserSignUp({required this.authRepository, required authRepositoryImpl});
  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signupWithEmailPassword(
        email: params.email, password: params.password, Name: params.name);
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams(
      {required this.email, required this.password, required this.name});
}
