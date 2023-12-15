import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/widgets/app_bar/appbar_title.dart';
import 'package:beg_app/widgets/app_bar/custom_app_bar.dart';
import 'package:beg_app/widgets/custom_checkbox_button.dart';
import 'package:beg_app/widgets/custom_elevated_button.dart';

import 'controller/my_cart_payment_address_controller.dart';

class MyCartPaymentAddressScreen
    extends GetWidget<MyCartPaymentAddressController> {
  const MyCartPaymentAddressScreen({Key? key}) : super(key: key);

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
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_payment".tr))),
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 12),
                              child: Padding(
                                  padding: getPadding(bottom: 5),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(
                                                left: 88,
                                                top: 10,
                                                right: 88,
                                                bottom: 10),
                                            decoration: AppDecoration.white,
                                            child: Padding(
                                                padding: getPadding(bottom: 5),
                                                child: AnotherStepper(
                                                    iconHeight: 38,
                                                    iconWidth: 38,
                                                    stepperDirection:
                                                        Axis.horizontal,
                                                    activeIndex: 1,
                                                    barThickness: 1,
                                                    activeBarColor: theme
                                                        .colorScheme.primary,
                                                    inverted: true,
                                                    stepperList: [
                                                      StepperData(
                                                          iconWidget: Container(
                                                              height:
                                                                  getSize(38),
                                                              width:
                                                                  getSize(38),
                                                              padding:
                                                                  getPadding(
                                                                      all: 9),
                                                              decoration: AppDecoration
                                                                  .fillGray200
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder19),
                                                              child: CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgLockPrimary,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width: getSize(
                                                                      20),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          title: StepperText(
                                                              "lbl_my_cart".tr,
                                                              textStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium)),
                                                      StepperData(
                                                          iconWidget: Container(
                                                              height:
                                                                  getSize(38),
                                                              width:
                                                                  getSize(38),
                                                              padding:
                                                                  getPadding(
                                                                      all: 9),
                                                              decoration: AppDecoration
                                                                  .fillGray200
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder19),
                                                              child: CustomImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgMines20x20,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width: getSize(
                                                                      20),
                                                                  alignment:
                                                                      Alignment
                                                                          .center)),
                                                          title: StepperText(
                                                              "lbl_payment".tr,
                                                              textStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium))
                                                    ]))),
                                        Container(
                                            margin: getMargin(top: 16),
                                            padding: getPadding(all: 20),
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_payment_summary"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 23),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_sub_total"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_88_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider()),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 14),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "lbl_discount"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_4_50".tr,
                                                                style: CustomTextStyles
                                                                    .bodyLargeGreen800)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 11),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text("lbl_tax".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge),
                                                            Text("lbl_2_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 15),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "lbl_shipping"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodyLarge)),
                                                            Text("lbl_3_00".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyLarge)
                                                          ])),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text: "lbl_flat_rate"
                                                              .tr,
                                                          value: controller
                                                              .flatRate.value,
                                                          margin: getMargin(
                                                              top: 13),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.flatRate
                                                                .value = value;
                                                          })),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text: "lbl_free".tr,
                                                          value: controller
                                                              .freevalue.value,
                                                          margin: getMargin(
                                                              top: 15),
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          onChange: (value) {
                                                            controller.freevalue
                                                                .value = value;
                                                          })),
                                                  Obx(() =>
                                                      CustomCheckboxButton(
                                                          text:
                                                              "lbl_local_pickup"
                                                                  .tr,
                                                          value: controller
                                                              .localPickup
                                                              .value,
                                                          margin: getMargin(
                                                              top: 15),
                                                          onChange: (value) {
                                                            controller
                                                                .localPickup
                                                                .value = value;
                                                          })),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Divider()),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 18),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1),
                                                                child: Text(
                                                                    "msg_total_payment_amount"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleMedium16)),
                                                            Text("lbl_89_00".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)
                                                          ]))
                                                ])),
                                        Container(
                                            width: double.maxFinite,
                                            margin: getMargin(top: 16),
                                            padding: getPadding(
                                                left: 18,
                                                top: 16,
                                                right: 18,
                                                bottom: 16),
                                            decoration: AppDecoration.white,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6,
                                                              bottom: 2),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_my_address"
                                                                        .tr,
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleMedium),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                7),
                                                                    child: Text(
                                                                        "msg_4140_parker_rd"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyLarge))
                                                              ]))),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgOverflowmenu,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          left: 37, bottom: 39),
                                                      onTap: () {
                                                        onTapImgOverflowmenu();
                                                      })
                                                ])),
                                        Container(
                                            margin: getMargin(top: 16),
                                            padding: getPadding(all: 20),
                                            decoration: AppDecoration.white,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "msg_choose_your_payment"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleLarge20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 21),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCheckmarkIndigo800,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_paypal".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgIcmoney1,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "msg_cash_on_delivery"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgEye,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 26),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgProfile,
                                                            height: getSize(28),
                                                            width: getSize(28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 5,
                                                                bottom: 2),
                                                            child: Text(
                                                                "lbl_stripe".tr,
                                                                style: CustomTextStyles
                                                                    .titleMedium16)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgContrast,
                                                            height: getSize(24),
                                                            width: getSize(24))
                                                      ]))
                                                ]))
                                      ]))))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                height: getVerticalSize(56),
                text: "lbl_confirm_payment".tr,
                margin: getMargin(left: 20, right: 12, bottom: 32),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryBold,
                onTap: () {
                  onTapConfirmpayment();
                })));
  }

  onTapConfirmpayment() {
    Get.toNamed(
      AppRoutes.orderConfirmScreen,
    );
  }


  onTapImgOverflowmenu() {
    Get.toNamed(
      AppRoutes.myCartPaymentAddressEditScreen,
    );
  }


  getPopupMenuItem(title,icon,function){
    return InkWell(
      onTap: function,
      child: Row(
        children: [
         CustomImageView(
           svgPath: ImageConstant.imgEditIcon,
         ),
         SizedBox(width: getHorizontalSize(12),),
          Text("Edit",style: CustomTextStyles.bodyHintStyle,)
        ],
      ),
    );

  }
}
