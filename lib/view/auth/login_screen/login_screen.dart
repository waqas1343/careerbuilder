import 'package:careerbuilder/constant/app_button/app_button.dart';
import 'package:careerbuilder/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/constant/app_icons/app_icons.dart';
import 'package:careerbuilder/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/constant/custom_textfield/custom_textield.dart';
import 'package:careerbuilder/utils/app_sizes/app_sizes.dart';
import 'package:careerbuilder/view_model/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../view_model/Controller/suffix_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final iconVisibility = Provider.of<SuffixController>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.mediumPadding(context)),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSizes.height20(context),
                ),
                Center(
                  child: CustomText(
                    text: Appstrings.logInyour,
                    color: Appcolors.btColorW,
                    fontSize: AppSizes.titleFontSize(context),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: AppSizes.height10(context),
                ),
                CustomText(
                  text: Appstrings.email,
                  color: Appcolors.btColorW,
                  fontWeight: FontWeight.w700,
                  fontSize: AppSizes.smallBodyText(context),
                ),
                AppTextFields.customTextField(
                    borderRadius: 50,
                    prefixIcon: AppIcons.emailIcon,
                    hintText: Appstrings.hintEmail,
                    controller: emailController,
                    validator: Validators.emailValidation),

                ///////////password yaha sy ///////////////
                CustomText(
                  text: Appstrings.password,
                  color: Appcolors.btColorW,
                  fontWeight: FontWeight.w700,
                  fontSize: AppSizes.smallBodyText(context),
                ),
                AppTextFields.customTextField(
                    obscureText: iconVisibility.isVisibleFirst,
                    borderRadius: 50,
                    suffixIcon: IconButton(
                        onPressed: () {
                          iconVisibility.firstToggle();
                        },
                        icon: iconVisibility.isVisibleFirst
                            ? AppIcons.suffixIconOff
                            : AppIcons.suffixIconOnn),
                    prefixIcon: AppIcons.passwordIcon,
                    hintText: Appstrings.hintPassword,
                    controller: passwordController,
                    validator: Validators.passwordValidator),

                SizedBox(
                  height: AppSizes.largeBodyText(context),
                ),

                Center(
                  child: AppButtons.customElevatedButton(
                      height: AppSizes.height05(context),
                      label: Appstrings.buttonLogin,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: CustomText(text: 'Login Successful')),
                          );

                          Navigator.pushNamed(context, '/SignUpScreen');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("Please correct the errors")),
                          );
                        }
                      },
                      backgroundColor: Appcolors.mainColor,
                      width: AppSizes.height50(context)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
