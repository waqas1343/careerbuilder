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
          padding: EdgeInsets.all(1.h),
          child: Form(
            key: formKey,
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: CustomText(
                    text: Appstrings.logInyour,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: Appstrings.email,
                  style: Theme.of(context).textTheme.bodyLarge,
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
                  style: Theme.of(context).textTheme.bodyLarge,
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
                  height: 1.h,
                ),

                Center(
                  child: AppButtons.customElevatedButton(
                    context: context,
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
