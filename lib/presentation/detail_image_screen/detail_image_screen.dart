import 'controller/detail_image_controller.dart';import 'package:flutter/material.dart';import 'package:beg_app/core/app_export.dart';import 'package:beg_app/widgets/app_bar/appbar_image.dart';import 'package:beg_app/widgets/app_bar/custom_app_bar.dart';class DetailImageScreen extends GetWidget<DetailImageController> {const DetailImageScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary, appBar: CustomAppBar(height: getVerticalSize(61), leadingWidth: getHorizontalSize(44), leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 20, top: 16, bottom: 16), onTap: () {onTapArrowleftone();}), actions: [Container(height: getSize(38), width: getSize(38), margin: getMargin(left: 20, top: 9, right: 9), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgEllipse245, height: getSize(38), width: getSize(38), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgShare, height: getSize(20), width: getSize(20), alignment: Alignment.center, margin: getMargin(all: 9))])), Container(height: getSize(38), width: getSize(38), margin: getMargin(left: 16, top: 9, right: 29), child: Stack(alignment: Alignment.center, children: [CustomImageView(svgPath: ImageConstant.imgEllipse245, height: getSize(38), width: getSize(38), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgLock, height: getSize(20), width: getSize(20), alignment: Alignment.center, margin: getMargin(all: 9))]))]), body: Container(width: double.maxFinite, padding: getPadding(left: 20, top: 76, right: 20), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgBg, height: getVerticalSize(534), width: getHorizontalSize(374)), CustomImageView(svgPath: ImageConstant.imgVolume, height: getVerticalSize(8), width: getHorizontalSize(34), margin: getMargin(top: 20, bottom: 5))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] library to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }
