import 'package:rana_s_application1/presentation/show_products_screen/show_products_screen.dart';

import '../add_product_screen/widgets/addproductlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rana_s_application1/core/app_export.dart';
import 'package:rana_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:rana_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:rana_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rana_s_application1/widgets/custom_drop_down.dart';
import 'package:rana_s_application1/widgets/custom_elevated_button.dart';
import 'package:rana_s_application1/widgets/custom_text_form_field.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController productNameEditTextController = TextEditingController();

  TextEditingController storeNameEditTextController = TextEditingController();

  TextEditingController priceEditTextController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(14.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "product pictures",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    _buildAddProductList(context),
                    SizedBox(height: 14.v),
                    _buildPressToAddPictureButton(context),
                    SizedBox(height: 28.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "product name ",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildProductNameEditText(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Store name",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    _buildStoreNameEditText(context),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "price",
                        textAlign: TextAlign.right,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildPriceEditText(context),
                    SizedBox(height: 36.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "category",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 18.v, 24.h, 18.v),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgIconsaxOutlineArrowcircledown,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        hintText: "category name",
                        items: dropdownItemList,
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildAddProductButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Add product",
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgArrowRight,
          margin: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddProductList(BuildContext context) {
    return SizedBox(
      height: 99.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 1.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 2.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return AddproductlistItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPressToAddPictureButton(BuildContext context) {
    return CustomElevatedButton(
      text: "press to add picture",
      margin: EdgeInsets.only(left: 1.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 14.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconsaxBoldAddsquare,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: productNameEditTextController,
        hintText: "product name",
      ),
    );
  }

  /// Section Widget
  Widget _buildStoreNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: storeNameEditTextController,
        hintText: "store name",
        contentPadding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: priceEditTextController,
        hintText: "price",
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 21.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddProductButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShowProductsScreen(),
          ),
        );
      },
      height: 64.v,
      text: "add product",
      margin: EdgeInsets.only(
        left: 17.h,
        right: 15.h,
        bottom: 37.v,
      ),
      buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
    );
  }
}
