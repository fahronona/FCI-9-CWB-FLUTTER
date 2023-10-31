import 'package:flutter/material.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/common/constans/image.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/data/datasources/auth_local_datasource.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/presentation/auth/login_page.dart';
import 'package:flutter_fic9_ecommerce_fahron_app/presentation/home/dashboard_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 3000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FutureBuilder<bool>(
              future: AuthLocalDataSource().isLogin(),
              builder: (context, snapshot) {
                if (snapshot.data != null && snapshot.data!) {
                  return const DashboardPage();
                } else {
                  return const LoginPage();
                }
              }),
        ),
      ),
    );

    return Scaffold(
      body: Center(
          child: Image.asset(
        Images.logo,
        width: 200,
        height: 200,
      )),
    );
  }
}
