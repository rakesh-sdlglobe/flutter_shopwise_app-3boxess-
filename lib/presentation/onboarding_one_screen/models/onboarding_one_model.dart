import '../../../core/utils/image_constant.dart';
import 'sliderfreshlyba_item_model.dart';

/// This class defines the variables used in the [onboarding_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingOneModel {
  // Rx<List<SliderfreshlybaItemModel>> sliderfreshlybaItemList =
  //     Rx(List.generate(1, (index) => SliderfreshlybaItemModel()));

  static List<SliderfreshlybaItemModel> sliderfreshlybaItemList() {
   return [
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding1st,
        "Find Favorite Items",
        "Find your favorite products that you want to buy easily"),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding2nd,
        "Add To Your Cart",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
    SliderfreshlybaItemModel(
        ImageConstant.imgOnboarding3rd,
        "Enjoy online shopping",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
   ];
  }
}
