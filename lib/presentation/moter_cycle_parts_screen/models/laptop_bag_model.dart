import '../../../core/utils/image_constant.dart';
import 'productdetails2_item_model.dart';

/// This class defines the variables used in the [cup_cake_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MoterCycleParts {
  // Rx<List<Productdetails2ItemModel>> productdetails2ItemList =
  //     Rx(List.generate(6, (index) => Productdetails2ItemModel()));

  static List<MoterCyclePartsModel> getMoterCyclePartsData() {
    return [
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts1st,
          "Lace-Up Sports Shoes",
          "4.3",
          "\$24.26",
          "\$10.46",
          "57%",
          "10",
          true,
          true,
          true),
      MoterCyclePartsModel(
        ImageConstant.imgMoterCycleParts2nd,
        "Lace-Ups Walking Shoes",
        "4.3",
        "\$19.95",
        "\$10.46",
        "57%",
        "10",
        false,
        false,
        false,
      ),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts3rd,
          "Lace-Up Running Shoes",
          "4.3",
          "\$20.00",
          "\$14.00",
          "10%",
          "10",
          true,
          false,
          false),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts4th,
          "Round-Toe Lace-Up Shoes",
          "4.3",
          "\$12.15",
          "\$09.62",
          "28%",
          "10",
          false,
          false,
          true),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts5th,
          "Artificial Olive Tree 4 feet With Pot",
          "4.3",
          "\$20.00",
          "\$12.00",
          "10%",
          "10",
          false,
          false,
          false),
      MoterCyclePartsModel(
          ImageConstant.imgMoterCycleParts6th,
          "Zamioculcas Zamiifolia-Zamia (ZZ)",
          "4.3",
          "\$20.00",
          "\$12.00",
          "10%",
          "10",
          true,
          false,
          false),
      // MoterCyclePartsModel(ImageConstant.imgMoterCycleParts7th,"Black front sweater","0.00","\$21.00","\$25.00","14%","10",false,false,false),
      // MoterCyclePartsModel(ImageConstant.imgMoterCycleParts8th,"Leto labore two r1 ","0.00","\$21.00","\$25.00","14%","10",false,false,false),
    ];
  }
}
