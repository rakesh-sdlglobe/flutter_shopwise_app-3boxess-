import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/presentation/my_address_delete_one_screen/models/my_address_delete_one_model.dart';

/// A controller class for the MyAddressDeleteOneScreen.
///
/// This class manages the state of the MyAddressDeleteOneScreen, including the
/// current myAddressDeleteOneModelObj
class MyAddressDeleteOneController extends GetxController {
  Rx<MyAddressDeleteOneModel> myAddressDeleteOneModelObj =
      MyAddressDeleteOneModel().obs;
}
