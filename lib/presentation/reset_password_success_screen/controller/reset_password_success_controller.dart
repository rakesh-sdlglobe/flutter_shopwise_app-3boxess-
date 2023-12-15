import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/presentation/reset_password_success_screen/models/reset_password_success_model.dart';

/// A controller class for the ResetPasswordSuccessScreen.
///
/// This class manages the state of the ResetPasswordSuccessScreen, including the
/// current resetPasswordSuccessModelObj
class ResetPasswordSuccessController extends GetxController {
  Rx<ResetPasswordSuccessModel> resetPasswordSuccessModelObj =
      ResetPasswordSuccessModel().obs;
}
