import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileDetailsScreen extends StatelessWidget {
  ProfileDetailsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController contactnumbervaController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Define selectedDate variable to store the selected date
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle20,
                    height: 857.v,
                    width: 393.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle39525,
                            height: 854.v,
                            width: 393.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 28.h,
                                vertical: 62.v,
                              ),
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Text(
                                      "Profile Details",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse371x71,
                                          height: 71.adaptSize,
                                          width: 71.adaptSize,
                                          radius: BorderRadius.circular(
                                            35.h,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 17.h,
                                            top: 11.v,
                                            bottom: 11.v,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Eric Tan Jr.",
                                                style: CustomTextStyles
                                                    .headlineSmallGray800,
                                              ),
                                              Text(
                                                "0912345678",
                                                style: CustomTextStyles
                                                    .bodyLargeGray800,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 33.v),
                                  _buildColumnnickname(context),
                                  SizedBox(height: 17.v),
                                  _buildColumnemailaddr(context),
                                  SizedBox(height: 17.v),
                                  _buildColumncontactnu(context),
                                  SizedBox(height: 25.v),
                                  Divider(
                                    color: appTheme.gray700,
                                    endIndent: 7.h,
                                  ),
                                  SizedBox(height: 18.v),
                                  _buildColumnfirstname(context),
                                  SizedBox(height: 17.v),
                                  _buildColumnlastname(context),
                                  SizedBox(height: 18.v),
                                  _buildColumnbirthday(context),
                                  SizedBox(height: 50.v)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
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
        text: "ACCOUNT SETTINGS",
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
  Widget _buildColumnnickname(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "Nickname",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              controller: nameController,
              hintText: "User",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnemailaddr(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "Email address",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              controller: emailController,
              hintText: "erictan@email.com",
              textInputType: TextInputType.emailAddress,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncontactnu(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "Contact Number",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              controller: contactnumbervaController,
              hintText: "09123456789",
              textInputType: TextInputType.phone, // Set TextInputType to phone
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnfirstname(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "First Name",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              controller: firstNameController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlastname(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "Last Name",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomTextFormField(
              controller: lastNameController,
              textInputAction: TextInputAction.done,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildColumnbirthday(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "Birthday",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          GestureDetector(
            onTap: () {
              _selectDate(context);
            },
            child: Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      selectedDate != null
                          ? "${selectedDate!.month}/${selectedDate!.day}/${selectedDate!.year}"
                          : "MM/DD/YYYY",
                      style: CustomTextStyles.bodyLargeGray700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconTextFieldDate,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 154.h),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Function to show the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: appTheme.lightBlue900, // Set primary color
            colorScheme: ColorScheme.light(
              primary: appTheme.lightBlue900, // Set primary color
              secondary: appTheme.lightBlue900, // Set accent color
            ),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate) {
      // Update selectedDate when a date is picked
      selectedDate = picked;
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
