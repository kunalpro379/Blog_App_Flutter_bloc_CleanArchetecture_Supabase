part of 'auth_bloc.dart';

sealed class AuthState {
  const AuthState();
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid;
  AuthSuccess({required this.uid});
}

final class AuthFailure extends AuthState {
  final String message;
  AuthFailure({required this.message});
}
