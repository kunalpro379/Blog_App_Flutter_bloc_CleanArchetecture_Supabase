import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/features/auth/data/datasources/auth.data_source.dart';
import 'package:blog_app/features/auth/data/repository/auth.repository.impl.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/sign_up.dart';
import 'package:blog_app/features/auth/usecases/user.signup.dart';
import 'package:blog_app/secrets/appsecrets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
      url: Appsecrets.supabaseurl, anonKey: Appsecrets.anonKey);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (_) => AuthBloc(
              userSignUp: UserSignUp(
                  authRepositoryImpl: AuthRepositoryImpl(
                      remoteDataSource: AuthRemoteDataSourceImpl(
                          supabaseClient: supabase.client)),
                  authRepository: AuthRepositoryImpl(
                      remoteDataSource: AuthRemoteDataSourceImpl(
                          supabaseClient: supabase.client)))))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.darkThemeMode,
        home: SignUpPage());
  }
}
