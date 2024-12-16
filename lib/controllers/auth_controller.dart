import 'package:get/get.dart';
import 'package:project_food_delivery/data/repository/auth_repo.dart';
import 'package:project_food_delivery/models/signup_body_model.dart';

class AuthController extends GetxController implements GetxService{
  final AuthRepo authRepo;
  AuthController({
    required this.authRepo
  });

  bool _isLoading = false;
  bool get isLoading => isLoading;

  registration(SignUpBody signUpBody){
    _isLoading=true;

  }
}