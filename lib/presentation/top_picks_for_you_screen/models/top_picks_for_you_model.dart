import '../../../core/utils/image_constant.dart';
import 'productdetails_item_model.dart';

/// This class defines the variables used in the [top_picks_for_you_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPicksForYouModel {
  // Rx<List<ProductdetailsItemModel>> productdetailsItemList =
  //     Rx(List.generate(6, (index) => ProductdetailsItemModel()));

  static List<ProductdetailsItemModel> getTopPicksForYou() {
    return [
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks1st,
          "Black Running Shoes",
          "4.3",
          "\$20.00",
          "\$45.00",
          "10%",
          "10",
          true,
          false,
          true),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks2nd,
          "Unisex Grey Lens & Black Round Sunglasses...",
          "4.3",
          "\$20.00",
          "\$50.00",
          "15%",
          "10",
          false,
          false,
          false),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks3rd,
          "Denim Jeans Jacket",
          "4.3",
          "\$10.00",
          "\$36.00",
          "10%",
          "10",
          false,
          false,
          false),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks4th,
          "Champion Flow Dad Adjustable Cap Black",
          "4.3",
          "\$12.00",
          "\$48.00",
          "15%",
          "10",
          false,
          false,
          true),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks5th,
          "Artificial Olive Tree 4 feet With Pot",
          "4.3",
          "\$20.00",
          "\$12.00",
          "10%",
          "10",
          false,
          false,
          false),
      ProductdetailsItemModel(
          ImageConstant.imgTopPicks6th,
          "Zamioculcas Zamiifolia-Zamia (ZZ)",
          "4.3",
          "\$20.00",
          "\$12.00",
          "15%",
          "10",
          false,
          false,
          false),
    ];
  }
}
