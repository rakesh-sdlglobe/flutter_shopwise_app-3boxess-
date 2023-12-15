import 'package:beg_app/core/app_export.dart';import 'package:beg_app/presentation/detail_image_screen/models/detail_image_model.dart';/// A controller class for the DetailImageScreen.
///
/// This class manages the state of the DetailImageScreen, including the
/// current detailImageModelObj
class DetailImageController extends GetxController {Rx<DetailImageModel> detailImageModelObj = DetailImageModel().obs;

 }
