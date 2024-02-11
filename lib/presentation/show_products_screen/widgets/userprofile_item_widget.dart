import 'package:flutter/material.dart';
import 'package:rana_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle39,
          height: 115.v,
          width: 114.h,
          radius: BorderRadius.circular(
            12.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "this is example ",
                style: CustomTextStyles.bodyLarge18,
              ),
              SizedBox(height: 14.v),
              Row(
                children: [
                  Text(
                    "120",
                    style: theme.textTheme.titleLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "SAR",
                      style: CustomTextStyles.bodySmallBluegray800,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.v),
              Container(
                width: 65.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 1.h,
                  vertical: 8.v,
                ),
                decoration: AppDecoration.fillGray200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "Store name",
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
