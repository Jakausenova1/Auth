import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/auth_bloc.dart';
import 'package:flutter_application_1/dio_settings.dart';
import 'package:flutter_application_1/repo/auth_repo.dart';
import 'package:flutter_application_1/welcome_phone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) =>
              AuthRepo(dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthBloc(
          repo: RepositoryProvider.of<AuthRepo>(context),
        ),
        child: MaterialApp(
          home: WelcomePhone(),
        ),
      ),
    );
  }
}
