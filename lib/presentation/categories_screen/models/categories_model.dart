
import '../../../core/utils/image_constant.dart';
import 'cupcake_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel {
  // Rx<List<MoterCyclePartsModel>> cupcakeItemList =
  //     Rx(List.generate(12, (index) => MoterCyclePartsModel()));


  static List<MoterCyclePartsModel> getCategories(){
    return [
      // MoterCyclePartsModel(ImageConstant.category1st,"Cloth"),
      MoterCyclePartsModel(ImageConstant.category1st,"Candle"),
      // MoterCyclePartsModel(ImageConstant.category2nd,"Sunglasses"),
      MoterCyclePartsModel(ImageConstant.category2nd,"jewelry"),
      // MoterCyclePartsModel(ImageConstant.category3rd,"Shoes"),
      MoterCyclePartsModel(ImageConstant.category3rd,"perfume"),
      // MoterCyclePartsModel(ImageConstant.category4th,"Bag"),
      MoterCyclePartsModel(ImageConstant.category4th,"Gift"),
      MoterCyclePartsModel(ImageConstant.category5th,"Books"),
      MoterCyclePartsModel(ImageConstant.category6th,"Home"),
      MoterCyclePartsModel(ImageConstant.category7th,"Gifts"),
      MoterCyclePartsModel(ImageConstant.category8th,"Watches"),
      MoterCyclePartsModel(ImageConstant.category9th,"Cosmetic"),
      MoterCyclePartsModel(ImageConstant.category10th,"Kids toy’s"),
      MoterCyclePartsModel(ImageConstant.category11th,"Beauty"),
      MoterCyclePartsModel(ImageConstant.category12th,"Electronic device"),
      // MoterCyclePartsModel(ImageConstant.category13th,"Sunglasses"),
      // MoterCyclePartsModel(ImageConstant.category14th,"Smart device"),
      // MoterCyclePartsModel(ImageConstant.category15th,"Motor cycle"),

    ];
  }
}
