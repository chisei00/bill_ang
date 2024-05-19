/* Authored by: Eric J. Tan Jr.
Company: Jerk Enterprises
Project: Bill-Ang
Feature: [BLNG-28] Profile overview
Description: This page is where the user navigates the hamburger menu to settings, profile, privacy, etc.
 */

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

// Hamburger Page Screen Widget
class HamburgerPageScreen extends StatelessWidget {
  const HamburgerPageScreen({Key? key})
      : super(
    key: key,
  );

  // Build method
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.19, 1.01),
              colors: [appTheme.lightBlue900, appTheme.cyan900],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 35.h,
              vertical: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3,
                  height: 88.adaptSize,
                  width: 88.adaptSize,
                  radius: BorderRadius.circular(
                    44.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Eric Tan Jr.",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "0912345678",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    indent: 38.h,
                    endIndent: 32.h,
                  ),
                ),
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "ACCOUNT SETTINGS",
                    style: CustomTextStyles.labelLargeExtraBold,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildActionItem(
                    context,
                    label: "Profile Details",
                    onPressed: () {
                      Navigator.pushNamed(
                          context,
                          AppRoutes.profileDetailsScreen
                      );
                    },
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildActionItem(
                    context,
                    label: "Security Settings",
                    onPressed: () {
                      Navigator.pushNamed(
                          context,
                          AppRoutes.securitySettingsScreen
                      );
                    },
                  ),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "QUICK ACTIONS",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildSecuritySettings(
                    context,
                    securityText: "Add Bills",
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildSecuritySettings(
                    context,
                    securityText: "View Bills",
                  ),
                ),
                // Continue with "QUICK ACTIONS" section...
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildSecuritySettings(
                    context,
                    securityText: "Transactions",
                  ),
                ),
                SizedBox(height: 71.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "PRIVACY",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildTermsAndConditions(
                    context,
                    termsAndConditionsText: "Privacy Policy",
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    right: 12.h,
                  ),
                  child: _buildTermsAndConditions(
                    context,
                    termsAndConditionsText: "Terms and Conditions",
                  ),
                ),
                SizedBox(height: 37.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconGenericSettings,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "Settings",
                        style: CustomTextStyles.bodyMediumRegular,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 16.v,
                        width: 13.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "Sign Out",
                          style: CustomTextStyles.bodyMediumRedA200,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Custom App Bar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAsset21,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconGenericClose,
          margin: EdgeInsets.fromLTRB(25.h, 19.v, 25.h, 12.v),
        )
      ],
    );
  }

    // Actions Section
  Widget _buildActionItem(
      BuildContext context, {
        required String label,
        required VoidCallback onPressed,
      }) {
    return GestureDetector(
      onTap: onPressed, // Execute the onPressed callback when tapped
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildSecuritySettings(
      BuildContext context, {
        required String securityText,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          securityText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 4.v,
          ),
        )
      ],
    );
  }

  Widget _buildTermsAndConditions(
      BuildContext context, {
        required String termsAndConditionsText,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          termsAndConditionsText,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.v,
          width: 6.h,
          margin: EdgeInsets.only(
            top: 6.v,
            bottom: 3.v,
          ),
        )
      ],
    );
  }
}
