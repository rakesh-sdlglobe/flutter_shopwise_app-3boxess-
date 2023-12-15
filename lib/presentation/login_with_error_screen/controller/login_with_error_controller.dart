import 'package:beg_app/core/app_export.dart';import 'package:beg_app/presentation/login_with_error_screen/models/login_with_error_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginWithErrorScreen.
///
/// This class manages the state of the LoginWithErrorScreen, including the
/// current loginWithErrorModelObj
class LoginWithErrorController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

Rx<LoginWithErrorModel> loginWithErrorModelObj = LoginWithErrorModel().obs;

Rx<bool> englishName = false.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); emailController.dispose(); } 
 }
