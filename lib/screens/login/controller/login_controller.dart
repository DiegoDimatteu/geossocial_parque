import 'package:geossocial_parque/screens/login/service/login_service.dart';

class LoginController {
  final LoginService loginService;

  LoginController({required this.loginService});

  void login() async {
    await loginService.login();
  }
}
