import 'controller/delet_order_controller.dart';
import 'package:flutter/material.dart';
import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DeletOrderScreen extends GetWidget<DeletOrderController> {
  const DeletOrderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
        width: getHorizontalSize(374),
        padding: getPadding(all: 30),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: getHorizontalSize(283),
                  margin: getMargin(left: 16, top: 2, right: 16),
                  child: Text("Are you sure you want to delete this karia briefcase from cart?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleMedium)),
              Padding(
                  padding: getPadding(top: 32),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: CustomOutlinedButton(

                                text: "lbl_no".tr,
                                margin: getMargin(right: 10),
                                buttonStyle: CustomButtonStyles.fillWhite,
                                onTap: () {
                                  Get.back();
                                })),
                        Expanded(
                            child: CustomOutlinedButton(
                                text: "lbl_yes".tr,
                                margin: getMargin(left: 10),
                                buttonStyle:
                                CustomButtonStyles.fillPrimary,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumOnPrimaryBold,
                                onTap: () {
                                 Get.back();
                                })),
                      ]))
            ]));









  }
}
