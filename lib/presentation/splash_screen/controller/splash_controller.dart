import 'dart:async';

import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/presentation/splash_screen/models/splash_model.dart';

/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      _getIsFirst();
    });
  }


  _getIsFirst() async {
    bool isSignIn = await PrefUtils.getIsSignIn();
    bool isIntro = await PrefUtils.getIsIntro();
    Timer(const Duration(seconds: 3), () {
      print("is intro ====== $isIntro");
      print("isSignIn ====== $isSignIn");
      // Get.toNamed(AppRoutes.onboardingOneScreen);
      if (isIntro) {
        Get.toNamed(AppRoutes.onboardingOneScreen);
      } else if (isSignIn) {
        Get.toNamed(AppRoutes.loginWithActiveScreen);
      } else {
        Get.toNamed(AppRoutes.homeContainerScreen);

      }
    });
  }
}
