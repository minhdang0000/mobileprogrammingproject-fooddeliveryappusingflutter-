import 'package:project_food_delivery/data/api/api_client.dart';
import 'package:project_food_delivery/models/signup_body_model.dart';
import 'package:project_food_delivery/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences
  });

  registration(SignUpBody signUpBody){
    apiClient.postData(AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }
}