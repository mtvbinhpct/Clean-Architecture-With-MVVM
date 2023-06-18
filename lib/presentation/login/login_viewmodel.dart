import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/base/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
