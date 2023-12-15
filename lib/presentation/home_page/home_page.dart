import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:beg_app/core/app_export.dart';
import 'package:beg_app/widgets/app_bar/appbar_image_1.dart';
import 'package:beg_app/widgets/app_bar/appbar_title.dart';
import 'package:beg_app/widgets/custom_search_view.dart';
import '../blog_screen/controller/blog_controller.dart';
import '../blog_screen/models/blog_item_model.dart';
import '../categories_screen/controller/categories_controller.dart';
import '../categories_screen/models/cupcake_item_model.dart';
import '../moter_cycle_parts_screen/textures_screen.dart';
import '../our_speciality_screen/controller/our_speciality_controller.dart';
import '../our_speciality_screen/models/our_speciality_item_model.dart';
import '../top_picks_for_you_screen/controller/top_picks_for_you_controller.dart';
import '../top_picks_for_you_screen/models/productdetails_item_model.dart';
import '../top_picks_for_you_screen/widgets/productdetails_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/slidercar_item_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categoriClass = [
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
    MoterCyclePartsScreen(),
  ];

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<HomeController>(
      builder: (controller) => Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray10002,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                padding: getPadding(top: 18, bottom: 18),
                decoration: AppDecoration.white,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppbarTitle(
                          text: "Welcome to 3Boxes",
                          margin: getMargin(left: 20)),
                      AppbarImage1(
                          onTap: () {
                            Get.toNamed(AppRoutes.notificationsScreen);
                          },
                          svgPath: ImageConstant.imgIcnotificationbing,
                          margin: getMargin(left: 20, right: 20, bottom: 2))
                    ],
                  ),
                  CustomSearchView(
                    margin: getMargin(left: 20, top: 25, right: 20),
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    function: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                    textInputType: TextInputType.none,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 16, right: 12, bottom: 16),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgSearch)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(56)),
                    //     suffix: Padding(
                    //         padding: EdgeInsets.only(
                    //             right: getHorizontalSize(15)),
                    //         child: IconButton(
                    //             onPressed: () {
                    //              controller.searchController
                    //                  .clear();
                    //             },
                    //             icon: Icon(Icons.clear,
                    //                 color: Colors.grey.shade600)))
                  )
                ])),
            Expanded(
                child: SingleChildScrollView(
                    padding: getPadding(top: 0),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: getPadding(top: 24, bottom: 24),
                                  child: CarouselSlider.builder(
                                    itemCount: controller.slider.length,
                                    itemBuilder: (context, index, realIndex) {
                                      SlidercarItemModel data =
                                          controller.slider[index];
                                      return Padding(
                                        padding: getPadding(left: 8, right: 8),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            // width: getSize(308),
                                            height: getSize(154),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(16)),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        data.image!))),
                                            child: Padding(
                                              padding: getPadding(
                                                  left: 31, right: 31),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: getHorizontalSize(
                                                      135,
                                                    ),
                                                    child: Text(data.title!,
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: theme.textTheme
                                                            .titleMedium),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 11,
                                                      right: 19,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Get.toNamed(AppRoutes.ourSpecialityScreen);
                                                            },
                                                            child: Text(
                                                              "lbl_shop_now".tr,
                                                              style: TextStyle(
                                                                  color: Colors.black, fontSize: 16),
                                                            ),
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              // backgroundColor: const Color.fromARGB(255, 245, 126, 166),
                                                              // backgroundColor: Color.fromARGB(255, 255, 255, 255),
                                                              backgroundColor : Color.fromARGB(255, 255, 255, 255),
                                                              // foregroundColor :
                                                              //     Colors.white,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide(
                                                                    color: Color.fromARGB(255, 0, 0, 0)),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18.0), // Adjust the border radius as needed
                                                              ),
                                                            ),
                                                          ),
                                                          // child: Text(
                                                          //   "lbl_shop_now".tr,
                                                          //   overflow:
                                                          //       TextOverflow
                                                          //           .ellipsis,
                                                          //   textAlign:
                                                          //       TextAlign.left,
                                                          //   style: CustomTextStyles
                                                          //       .titleMediumErrorContainer,
                                                          // ),
                                                        ),
                                                        // CustomImageView(
                                                        //   svgPath: ImageConstant
                                                        //       .imgArrowRightfULL,
                                                        //   color: appTheme
                                                        //       .shopbuttonTextColor,
                                                        //   height: getSize(
                                                        //     20,
                                                        //   ),
                                                        //   width: getSize(
                                                        //     20,
                                                        //   ),
                                                        //   margin: getMargin(
                                                        //     left: 5,
                                                        //     bottom: 1,
                                                        //   ),
                                                        // ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    options: CarouselOptions(
                                        onPageChanged: (index, reason) {
                                          controller.sliderIndex = index;
                                          controller.update();
                                        },
                                        height: getSize(154),
                                        autoPlay: true,
                                        scrollDirection: Axis.horizontal,
                                        initialPage: 1,
                                        viewportFraction: 0.8),
                                  ),
                                ),
                              ),

                              Container(
                                  padding: getPadding(
                                      left: 16, top: 13, right: 16, bottom: 0),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 6, right: 4),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_categories".tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewall();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)))
                                                ])),
                                        GetBuilder<CategoriesController>(
                                          init: CategoriesController(),
                                          builder: (categoriesController) =>
                                              GridView.builder(
                                            primary: false,
                                            shrinkWrap: true,
                                            itemCount: categoriesController
                                                        .categoryList.length >
                                                    4
                                                ? 4
                                                : categoriesController
                                                    .categoryList.length,
                                            padding: getPadding(
                                                top: 8,
                                                bottom: 16,
                                                left: 16,
                                                right: 16),
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(109),
                                                    crossAxisCount: 4,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(20),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(20)),
                                            itemBuilder: (context, index) {
                                              MoterCyclePartsModel model =
                                                  categoriesController
                                                      .categoryList[index];
                                              return GestureDetector(
                                                onTap: () {
                                                  Get.to(categoriClass[index]);
                                                },
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      height: getSize(79),
                                                      width: getSize(79),
                                                      decoration: BoxDecoration(
                                                        // shape: BoxShape.circle,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        color: appTheme.gray100,
                                                      ),
                                                      child: Padding(
                                                        padding: getPadding(
                                                            top: 4,
                                                            bottom: 4,
                                                            left: 10,
                                                            right: 10),
                                                        child: CustomImageView(
                                                          imagePath:
                                                              model.image!,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          getVerticalSize(5),
                                                    ),
                                                    Text(
                                                      model.title!,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: theme.textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              fontSize:
                                                                  getFontSize(
                                                                      14),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ])),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      left: 20, top: 16, right: 20, bottom: 0),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Trending Products",
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewallone();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 3),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge)))
                                                ])),
                                        GetBuilder<TopPicksForYouController>(
                                          init: TopPicksForYouController(),
                                          builder: (topPicksForYouController) =>
                                              GridView.builder(
                                            padding: getPadding(
                                              top: 18,
                                              bottom: 16,
                                            ),
                                            itemCount: topPicksForYouController
                                                        .topPicksList.length <
                                                    2
                                                ? topPicksForYouController
                                                    .topPicksList.length
                                                : 2,
                                            primary: false,
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(292),
                                                    crossAxisCount:
                                                        topPicksForYouController
                                                                    .topPicksList
                                                                    .length <
                                                                2
                                                            ? topPicksForYouController
                                                                .topPicksList
                                                                .length
                                                            : 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(16),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(20)),
                                            itemBuilder: (context, index) {
                                              ProductdetailsItemModel data =
                                                  topPicksForYouController
                                                      .topPicksList[index];
                                              return product_formate(data, () {
                                                Get.toNamed(AppRoutes
                                                    .detailTabContainerScreen);
                                              },
                                                  CustomImageView(
                                                      onTap: () {
                                                        controller
                                                            .setFavProduct(
                                                                data);
                                                      },
                                                      svgPath: data.isFavourite!
                                                          ? ImageConstant
                                                              .imgFavouriteIconSelected
                                                          : ImageConstant
                                                              .imgFavouriteIcon,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      alignment: Alignment
                                                          .centerRight));

                                              // Container(
                                              //   decoration: BoxDecoration(
                                              //       color: ColorConstant.gray50,
                                              //       borderRadius: BorderRadius.circular(
                                              //           getHorizontalSize(16))),
                                              //   child: Column(
                                              //     children: [],
                                              //   ),
                                              // );
                                            },
                                          ),
                                        ),
                                      ])),
                              SizedBox(
                                height: getVerticalSize(10),
                              ),
                              Padding(
                                  padding: getPadding(left: 0, right: 0),
                                  child: Container(
                                    height: getVerticalSize(220),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          ImageConstant.imgDiscountBanner,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(16),
                                      ),
                                    ),
                                  )),
                              // CarouselSlider.builder(
                              //   itemCount: controller.discountItemSlider.length,
                              //   itemBuilder: (context, index, realIndex) {
                              //     DiscountItemModel data =
                              //     controller.discountItemSlider[index];
                              //     return Padding(
                              //       padding: getPadding(left: 8,right: 8),
                              //       child: GestureDetector(
                              //         onTap: () {},
                              //         child: Container(
                              //           width: getSize(308),
                              //           height: getSize(150),
                              //           decoration: BoxDecoration(
                              //               borderRadius: BorderRadius.circular(
                              //                   getHorizontalSize(16)),
                              //               image: DecorationImage(
                              //                   fit: BoxFit.fill,
                              //                   image: AssetImage(data.image!),),),
                              //           child: Padding(
                              //             padding: getPadding(left: 16, right: 16),
                              //             child: Column(
                              //               crossAxisAlignment:
                              //               CrossAxisAlignment.start,
                              //               mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //               children: [
                              //
                              //                 Text(
                              //                     data.subtitle!,
                              //                     style: theme
                              //                         .textTheme
                              //                         .bodyMedium),
                              //                 SizedBox(height: getVerticalSize(8),),
                              //                 Text(
                              //                     data.title!.toUpperCase(),
                              //                     style: CustomTextStyles
                              //                         .titleLarge20),
                              //                 SizedBox(height: getVerticalSize(8),),
                              //                 Container(
                              //                   width: getSize(126),
                              //                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                              //                   color:  appTheme.black900,),
                              //                   child: Padding(
                              //                     padding: getPadding(top: 13.04,bottom: 13.04),
                              //                     child: Center(child: Text("lbl_redeem_now".tr,style:CustomTextStyles.titleMediumOnPrimary)),
                              //                   ),
                              //                 )
                              //               ],
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     );
                              //   },
                              //   options: CarouselOptions(
                              //       onPageChanged: (index, reason) {
                              //         // controller.sliderIndex.value = index;
                              //       },
                              //       height: getSize(154),
                              //       autoPlay: true,
                              //       scrollDirection: Axis.horizontal,
                              //       initialPage: 1,
                              //       viewportFraction: 0.79),
                              // ),

                              Container(
                                  margin: getMargin(top: 10),
                                  padding:
                                      getPadding(top: 20, left: 20, right: 20),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Popular Products",
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtViewalltwo();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 5),
                                                          child: Text(
                                                              "lbl_view_all".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium)))
                                                ])),
                                        GetBuilder<OurSpecialityController>(
                                          init: OurSpecialityController(),
                                          builder: (ourSpecialityController) =>
                                              GridView.builder(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 16,
                                            ),
                                            itemCount: ourSpecialityController
                                                        .ourSpecialityData
                                                        .length <
                                                    2
                                                ? ourSpecialityController
                                                    .ourSpecialityData.length
                                                : 2,
                                            primary: false,
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(292),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(16),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(20)),
                                            itemBuilder: (context, index) {
                                              OurSpecialityItemModel model =
                                                  ourSpecialityController
                                                      .ourSpecialityData[index];
                                              return product_formate(model, () {
                                                Get.toNamed(AppRoutes
                                                    .detailTabContainerScreen);
                                              },
                                                  CustomImageView(
                                                      onTap: () {
                                                        controller
                                                            .setFavProduct(
                                                                model);
                                                      },
                                                      svgPath: model
                                                              .isFavourite!
                                                          ? ImageConstant
                                                              .imgFavouriteIconSelected
                                                          : ImageConstant
                                                              .imgFavouriteIcon,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      alignment: Alignment
                                                          .centerRight));
                                            },
                                          ),
                                        ),
                                      ])),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(top: 20, bottom: 20),
                                  decoration: AppDecoration.white,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 4, right: 26),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_blog".tr,
                                                      style: CustomTextStyles
                                                          .titleLarge20),
                                                  GestureDetector(
                                                    onTap: () {
                                                      Get.toNamed(
                                                          AppRoutes.blogScreen);
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            bottom: 6),
                                                        child: Text(
                                                            "lbl_view_all".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                  )
                                                ])),
                                        SizedBox(
                                          height: getVerticalSize(8),
                                        ),
                                        GetBuilder<BlogController>(
                                          init: BlogController(),
                                          builder: (blogController) => SizedBox(
                                            height: getSize(274),
                                            child: ListView.builder(
                                              padding: getPadding(
                                                right: 4,
                                                left: 4,
                                              ),
                                              itemCount: blogController
                                                          .blogData.length >
                                                      3
                                                  ? 3
                                                  : blogController
                                                      .blogData.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                BlogItemModel model =
                                                    blogController
                                                        .blogData[index];
                                                return GestureDetector(
                                                  onTap: () {
                                                    Get.toNamed(AppRoutes
                                                        .blogDetailScreen);
                                                  },
                                                  child: Padding(
                                                    padding: getPadding(
                                                        left: 12, right: 12),
                                                    child: Container(
                                                        width: getSize(245),
                                                        height: getSize(274),
                                                        padding:
                                                            getPadding(all: 0),
                                                        decoration:
                                                            BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                      16),
                                                                ),
                                                                border: Border.all(
                                                                    color: appTheme
                                                                        .gray20),
                                                                color: appTheme
                                                                    .white),
                                                        child: Padding(
                                                          padding: getPadding(
                                                              all: 12),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      getSize(
                                                                          134),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          model
                                                                              .image,
                                                                      width: double
                                                                          .infinity,
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(16))),
                                                                ),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                12),
                                                                    child: Text(
                                                                      model
                                                                          .title!,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium,
                                                                      maxLines:
                                                                          1,
                                                                    )),
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            216),
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                9),
                                                                    child: Text(
                                                                        model
                                                                            .subTitle!,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        style: CustomTextStyles
                                                                            .bodyMedium13_1)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 9,
                                                                        bottom:
                                                                            0),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              model.date!,
                                                                              style: theme.textTheme.bodySmall),
                                                                          Container(
                                                                              height: getSize(3),
                                                                              width: getSize(3),
                                                                              margin: getMargin(left: 8, top: 5, bottom: 7),
                                                                              decoration: BoxDecoration(color: appTheme.gray700, borderRadius: BorderRadius.circular(getHorizontalSize(1)))),
                                                                          Padding(
                                                                              padding: getPadding(left: 8),
                                                                              child: Text(model.date!, style: theme.textTheme.bodySmall))
                                                                        ]))
                                                              ]),
                                                        )),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ]))
                            ]))))
          ])),
    );
  }

  onTapCategorie() {
    Get.toNamed(AppRoutes.duffelBagScreen);
  }

  onTapTxtViewall() {
    Get.toNamed(
      AppRoutes.categories2GridScreen,
    );
  }

  onTapTxtViewallone() {
    Get.toNamed(
      AppRoutes.topPicksForYouScreen,
    );
  }

  onTapProductdetails() {
    Get.toNamed(
      AppRoutes.detailTabContainerScreen,
    );
  }

  onTapTxtViewalltwo() {
    Get.toNamed(
      AppRoutes.ourSpecialityScreen,
    );
  }

  onTapProductdetails1() {
    Get.toNamed(
      AppRoutes.detailTabContainerScreen,
    );
  }
}
