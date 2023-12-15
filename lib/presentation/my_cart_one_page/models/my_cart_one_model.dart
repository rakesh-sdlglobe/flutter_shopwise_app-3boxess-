import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/presentation/my_cart_one_page/models/shipping_mothod_model.dart';

import 'my_cart_one_item_model.dart';

/// This class defines the variables used in the [my_cart_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCartOneModel {
  // Rx<List<MyCartOneItemModel>> myCartOneItemList =
  //     Rx(List.generate(3, (index) => MyCartOneItemModel()));

// order item list
  static List<MyCartOneItemModel> getCartItem(){
    return [
      MyCartOneItemModel(ImageConstant.imgCart1st,"Red meg body spartdea","\$ 30.00","16''",1),
      MyCartOneItemModel(ImageConstant.imgCart2nd,"Leto labore two r1 ","\$19.00","20''",1),
      MyCartOneItemModel(ImageConstant.imgCart3rd,"Dish brack car ","\$25.00","22''",1),
    ];
  }
// shipping methos list
  static List<ShippingModel> getShippingMethos(){
    return [
      ShippingModel("Flat Rate",1),
      ShippingModel("Free",2),
      ShippingModel("Local Pickup",3),
    ];
  }
}
