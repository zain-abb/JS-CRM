import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js_crm/features/authentication/presentation/widgets/custom_form_field.dart';
import 'package:js_crm/utils/constants/app_assets.dart';
import 'package:js_crm/utils/validators/text_field_validator.dart';
import 'package:simple_shadow/simple_shadow.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.appLogoSVG,
              height: 54.h,
            ),
            SizedBox(height: 22.h),
            SimpleShadow(
              opacity: 0.6,
              color: Colors.black12,
              offset: const Offset(0, 3),
              sigma: 10,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 44.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                ),
                child: Column(
                  children: [
                    Text(
                      'Log In',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Welcome to JS CRM',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(height: 22.h),
                    const CustomTextFormField(
                      labelText: 'Enter your email',
                      hintText: 'Email Address',
                      validator: TextFieldValidator.validateEmail,
                    ),
                    SizedBox(height: 22.h),
                    const CustomTextFormField(
                      obsecureText: true,
                      labelText: 'Enter your password',
                      hintText: 'Password',
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.translate(
                          offset: Offset(-12.w, 0),
                          child: Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              Text(
                                'Remember me',
                                style: Theme.of(context).textTheme.caption?.copyWith(
                                      fontSize: 14.sp,
                                    ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Forget Password?',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                    SizedBox(height: 22.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
