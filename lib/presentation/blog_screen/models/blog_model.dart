import '../../../core/utils/image_constant.dart';
import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {
  // Rx<List<BlogItemModel>> blogItemList =
  //     Rx(List.generate(5, (index) => BlogItemModel()));
  static List<BlogItemModel> getBlogData() {
    return [
      BlogItemModel(
          ImageConstant.imgBlog1st,
          "Why choose an bag for women?",
          "Lorem Ipsum is simply dummy text of the printing and typesetting...",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog2nd,
          "How to choose your best cloth?",
          "Lorem Ipsum is simply dummy text of the printing and typesetting...",
          "13 Sep, 2022",
          "15 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog3rd,
          "Why choose an sunglasses?  ",
          "Lorem Ipsum is simply dummy text of the printing and typesetting...",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog4th,
          "How to choose your best shoes?",
          "Lorem Ipsum is simply dummy text of the printing and typesetting...",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog5th,
          "Why choose an cloth for men?",
          "Lorem Ipsum is simply dummy text of the printing and typesetting...",
          "13 Sep, 2022",
          "10 Min Read"),
      // BlogItemModel(
      //     ImageConstant.imgBlog6th,
      //     "What are the three spares?",
      //     "Magical realm of bakeries the artistry behind their creations.",
      //     "13 Sep, 2022",
      //     "10 Min Read"),
      // BlogItemModel(ImageConstant.imgBlog7th,"What is spare in engineering","Plants are predominantly photosyn thetic eukaryotes of the kingdom..","13 Sep, 2022","10 Min Read"),
    ];
  }
}
