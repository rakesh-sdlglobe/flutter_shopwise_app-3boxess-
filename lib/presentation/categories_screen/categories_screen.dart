import 'package:flutter/material.dart';
import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/widgets/app_bar/appbar_image.dart';
import 'package:beg_app/widgets/app_bar/appbar_title.dart';
import 'package:beg_app/widgets/app_bar/custom_app_bar.dart';

import '../categories_screen/widgets/cupcake_item_widget.dart';
import 'controller/categories_controller.dart';
import 'models/cupcake_item_model.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray10002,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 21, bottom: 21),
                          decoration: AppDecoration.white,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(44),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin: getMargin(left: 20, bottom: 3),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_categories".tr))),
                      Expanded(
                          child: Container(
                              decoration: AppDecoration.white,
                              margin: getMargin(top: 12),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(144),
                                      crossAxisCount: 3,
                                      mainAxisSpacing:
                                      getHorizontalSize(21),
                                      crossAxisSpacing:
                                      getHorizontalSize(20)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.categoryList.length,
                                  itemBuilder: (context, index) {
                                    MoterCyclePartsModel model = controller
                                        .categoryList[index];
                                    return CupcakeItemWidget(model);
                                  })))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
