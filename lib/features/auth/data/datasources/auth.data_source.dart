import 'package:blog_app/core/errors/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signupwithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> signinWithEmailPassword({
    required String email,
    required String password,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<String> signinWithEmailPassword(
      {required String email, required String password}) async {
    try {
      final response = await supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user == null) throw Exception('User not found');
      return response.user!.id;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<String> signupwithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await supabaseClient.auth.signUp(
        email: email,
        password: password,
        data: {
          'name': name,
        },
      );
      if (response.user == null) throw Exception('User not found');
      return response.user!.id;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
