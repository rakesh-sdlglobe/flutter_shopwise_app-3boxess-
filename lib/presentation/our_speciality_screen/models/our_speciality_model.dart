import '../../../core/utils/image_constant.dart';
import 'our_speciality_item_model.dart';

/// This class defines the variables used in the [our_speciality_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OurSpecialityModel {
  // Rx<List<OurSpecialityItemModel>> ourSpecialityItemList =
  //     Rx(List.generate(6, (index) => OurSpecialityItemModel()));

  static List<OurSpecialityItemModel> getOurSpeciality() {
    return [
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality1st,
          "Shoulder PU-Leather Handbags for Women",
          "4.3",
          "\$20.00",
          "\$10.00",
          "10%",
          "10",
          true,
          false,
          true),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality2nd,
          "Full Sleeve Sweatshirt for Men (Pink)",
          "4.3",
          "\$25.00",
          "\$15.00",
          "10%",
          "10",
          false,
          false,
          false),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality3rd,
          "Little desire Retro Designer Mirror Round...",
          "4.3",
          "\$20.00",
          "\$24.00",
          "10%",
          "10",
          false,
          false,
          false),
      OurSpecialityItemModel(
          ImageConstant.imgOurSpeciality4th,
          "Quartz wrist watch waterproof watch for...",
          "4.3",
          "\$20.00",
          "\$25.00",
          "10%",
          "10",
          false,
          false,
          true),
      OurSpecialityItemModel(
        ImageConstant.imgOurSpeciality5th,
        "Running Lace-Up Sports Shoes",
        "4.3",
        "\$20.00",
        "\$12.00",
        "10%",
        "10",
        false,
        false,
        false,
      ),
      OurSpecialityItemModel(
        ImageConstant.imgOurSpeciality6th,
        "Denim Jeans Jacket",
        "4.3",
        "\$10.00",
        "\$36.00",
        "10%",
        "10",
        false,
        false,
        false,
      ),
    ];
  }
}
