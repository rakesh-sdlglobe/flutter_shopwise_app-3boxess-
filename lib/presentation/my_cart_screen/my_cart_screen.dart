import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/presentation/home_page/home_page.dart';
import 'package:beg_app/widgets/app_bar/appbar_title.dart';
import 'package:beg_app/widgets/app_bar/custom_app_bar.dart';
import 'package:beg_app/widgets/custom_bottom_bar.dart';
import 'package:beg_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/my_cart_controller.dart';

class MyCartScreen extends GetWidget<MyCartController> {
   MyCartScreen({Key? key}) : super(key: key);

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
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.white,
                          child: CustomAppBar(
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_cart".tr))),
                      Container(
                          padding: getPadding(left: 57, right: 57),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getSize(140),
                                    width: getSize(140),
                                    padding: getPadding(
                                        left: 28,
                                        top: 31,
                                        right: 28,
                                        bottom: 31),
                                    decoration: AppDecoration
                                        .fillSecondaryContainer
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder70),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCartEmpty,
                                        height: getVerticalSize(78),
                                        width: getHorizontalSize(84),
                                        alignment: Alignment.center)),
                                Padding(
                                    padding: getPadding(top: 32),
                                    child: Text("lbl_no_cart_yet".tr,
                                        style: theme.textTheme.titleLarge)),
                                Padding(
                                    padding: getPadding(top: 14),
                                    child: Text("msg_explore_more_and".tr,
                                        style: theme.textTheme.bodyLarge)),
                                CustomElevatedButton(
                                    height: getVerticalSize(56),
                                    width: getHorizontalSize(178),
                                    text: "lbl_add_product".tr,
                                    margin: getMargin(top: 30, bottom: 6),
                                    buttonStyle: CustomButtonStyles.fillPrimary,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumOnPrimaryBold,
                                    onTap: () {
                                      onTapAddproduct();
                                    })
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homeContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homeContainerScreen.
  onTapAddproduct() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
