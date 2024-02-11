import 'package:flutter/material.dart';
import 'package:rana_s_application1/core/app_export.dart';
import 'package:rana_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AddproductlistItemWidget extends StatelessWidget {
  const AddproductlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 99.v,
      width: 96.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle8088,
            height: 99.v,
            width: 96.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 6.v,
            ),
            child: CustomIconButton(
              height: 23.adaptSize,
              width: 23.adaptSize,
              padding: EdgeInsets.all(1.h),
              alignment: Alignment.topLeft,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconsaxBulkForbidden2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
