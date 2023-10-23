import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/presentation/auth/bloc/register/register_bloc.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/presentation/auth/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()),
        BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashPage()),
    );
  }
}