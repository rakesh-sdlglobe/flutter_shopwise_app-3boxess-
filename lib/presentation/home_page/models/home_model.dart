import 'package:beg_app/presentation/home_page/models/slidercar_item_model.dart';

import '../../../core/utils/image_constant.dart';
import 'discount_item_slider_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
//// CarouselSlider  banner data
  static List<SlidercarItemModel> slidercarItemList() {
    return [
      SlidercarItemModel(
          ImageConstant.imgSlider1st, "10% Off On Flower Plants"),
      SlidercarItemModel(
          ImageConstant.imgSlider2nd, "15% Off On First Any Order"),
      SlidercarItemModel(
          ImageConstant.imgSlider3rd, "10% Off On First Any Order"),
    ];
  }

/////Discount Carousel Slider section
  static List<DiscountItemModel> getDiscountData() {
    return [
      DiscountItemModel(ImageConstant.imgDiscountSlider1st, "SWEETAN",
          "Sweet up your day with 20% off all cupcakes"),
      DiscountItemModel(ImageConstant.imgDiscountSlider2nd, "HOLIDAYDEAL.",
          "Get 20% off your sweet treats with code"),
      DiscountItemModel(ImageConstant.imgDiscountSlider3rd, "ERFTGW.",
          "Get 10% off your first order with code "),
    ];
  }
}
