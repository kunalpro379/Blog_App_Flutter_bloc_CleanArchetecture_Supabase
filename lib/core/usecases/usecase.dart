import 'package:blog_app/core/errors/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType,Params> {
  Future<Either<Failure, SuccessType>> call(Params params);
}
