import '../controller/my_cart_.dart';
import 'package:get/get.dart';

/// A binding class for the MyCartPaymentAddressEditScreen.
///
/// This class ensures that the MyCartPaymentAddressEditController is created when the
/// MyCartPaymentAddressEditScreen is first loaded.
class MyCartPaymentAddressEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCartPaymentAddressEditController());
  }
}
