import 'package:careerbuilder/utils/constant/app_button/app_button.dart';
import 'package:careerbuilder/utils/constant/app_colours/appcolors.dart';
import 'package:careerbuilder/utils/constant/app_icons/app_icons.dart';
import 'package:careerbuilder/utils/constant/app_strings/appstrings.dart';
import 'package:careerbuilder/utils/constant/custom_text/custom_text.dart';
import 'package:careerbuilder/utils/constant/custom_textfield/custom_textield.dart';
import 'package:careerbuilder/view_model/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../view_model/Controller/suffix_controller.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmPController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final iconVisibility = Provider.of<SuffixController>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: CustomText(
                    textAlign: TextAlign.center,
                    text: Appstrings.createAccount,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                ////////////user name yaha sy //
                CustomText(
                  text: Appstrings.userNamec,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                AppTextFields.customTextField(
                    borderRadius: 50,
                    prefixIcon: AppIcons.emailIcon,
                    hintText: Appstrings.userName,
                    controller: nameController,
                    validator: Validators.enterName),
                ////////////email yaha sy ///////////
                CustomText(
                  text: Appstrings.email,
                  style: Theme.of(context).textTheme.bodyMedium,
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
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                AppTextFields.customTextField(
                    obscureText: iconVisibility.isVisibleFirst,
                    suffixIcon: IconButton(
                        onPressed: () {
                          iconVisibility.firstToggle();
                        },
                        icon: iconVisibility.isVisibleFirst
                            ? AppIcons.suffixIconOff
                            : AppIcons.suffixIconOnn),
                    borderRadius: 50,
                    prefixIcon: AppIcons.passwordIcon,
                    hintText: Appstrings.hintPassword,
                    controller: passwordController,
                    validator: Validators.passwordValidator),
                /////password yaha sy //////
                CustomText(
                  text: Appstrings.confirmPassword,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                AppTextFields.customTextField(
                    obscureText: iconVisibility.isVisibleSecond,
                    borderRadius: 50,
                    prefixIcon: AppIcons.passwordIcon,
                    suffixIcon: IconButton(
                        onPressed: () {
                          iconVisibility.secondToggle();
                        },
                        icon: iconVisibility.isVisibleSecond
                            ? AppIcons.suffixIconOff
                            : AppIcons.suffixIconOnn),
                    hintText: Appstrings.confirmPassword,
                    controller: confirmPController,
                    validator: Validators.passwordValidator),

                SizedBox(
                  height: 1.h,
                ),

                Center(
                  child: AppButtons.customElevatedButton(
                    context: context,
                    height: 7.h,
                    label: Appstrings.buttonCreate,
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: CustomText(text: 'Login Successful')));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please correct the errors")),
                        );
                      }
                    },
                    backgroundColor: Appcolors.mainColor,
                    width: double.infinity,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
