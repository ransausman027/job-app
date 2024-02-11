import '../show_products_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rana_s_application1/core/app_export.dart';
import 'package:rana_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:rana_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:rana_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rana_s_application1/widgets/custom_elevated_button.dart';

class ShowProductsScreen extends StatelessWidget {
  const ShowProductsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product screen '),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 8.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "categories",
                style: CustomTextStyles.bodyLargeBluegray800,
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconsaxBoldElementequal,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                    ),
                    CustomElevatedButton(
                      height: 36.v,
                      width: 210.h,
                      text: "Change the display to horizontal",
                      margin: EdgeInsets.only(left: 4.h),
                      buttonStyle: CustomButtonStyles.fillWhiteA,
                      buttonTextStyle: CustomTextStyles.bodySmallRedA200,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildUserProfile(context),
              SizedBox(height: 84.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgIcBaselinePlus,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "products",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 137.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 10.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        },
      ),
    );
  }
}
