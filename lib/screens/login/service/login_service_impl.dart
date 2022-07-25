import 'package:firebase_auth/firebase_auth.dart';
import 'package:geossocial_parque/screens/login/repositories/login_repository.dart';
import 'package:geossocial_parque/screens/login/service/login_service.dart';

class LoginServiceImpl implements LoginService {
  final LoginRepository loginRepository;

  LoginServiceImpl({required this.loginRepository});

  @override
  Future<UserCredential> login() {
    return loginRepository.login();
  }
}
