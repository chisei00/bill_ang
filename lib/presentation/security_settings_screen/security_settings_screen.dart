import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          height: SizeUtils.height,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle20852x393,
                height: SizeUtils.height,
                width: SizeUtils.width,
                alignment: Alignment.center,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 100.v),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 23.h,
                      vertical: 40.v,
                    ),
                    decoration: AppDecoration.fillWhiteA,
                    child: _buildChangePinRow(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 59.v,
          bottom: 14.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "SECURITY SETTINGS",
        margin: EdgeInsets.only(
          top: 58.v,
          bottom: 11.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgInfo,
          margin: EdgeInsets.fromLTRB(20.h, 54.v, 20.h, 12.v),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildChangePinRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Change PIN",
              style: CustomTextStyles.bodyLargeGray700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray60001,
            height: 10.v,
            width: 6.h,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 8.h,
              bottom: 5.v,
            ),
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
