import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geossocial_parque/screens/login/controller/login_controller.dart';
import 'package:geossocial_parque/screens/login/repositories/login_repository_impll.dart';
import 'package:geossocial_parque/screens/login/service/login_service_impl.dart';
import 'package:geossocial_parque/shared/utils/routes.dart';
import 'package:supercharged/supercharged.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final controller = LoginController(
      loginService: LoginServiceImpl(
        loginRepository: LoginRepositoryImpl(),
      ),
    );

    return Scaffold(
      backgroundColor: "004B23".toColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image/logo.png',
                height: screenSize.height * 0.25),
            SizedBox(height: screenSize.height * 0.05),
            Text(
              'LinkPark',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: "EBF2FA".toColor(),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.1,
            ),
            SizedBox(
              width: screenSize.width * .5,
              height: 49,
              child: ElevatedButton(
                onPressed: () {
                  controller.login();
                  FirebaseAuth.instance
                      .authStateChanges()
                      .listen((User? user) async {
                    if (user != null) {
                      Navigator.pushNamed(context, AppRoutes.home);
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                ),
                child: Image.asset('assets/image/google.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
