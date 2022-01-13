import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js_crm/app/globals.dart';
import 'package:js_crm/features/splash/presentation/manager/splash_page_view_model.dart';

import '../../../../utils/constants/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashPageViewModel _splashPageViewModel = sl();

  @override
  void initState() {
    _splashPageViewModel.moveForward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SvgPicture.asset(AppAssets.appLogoSVG),
            ),
          ),
          // CircularProgressIndicator.adaptive(
          //   strokeWidth: 2,
          //   backgroundColor: Colors.transparent,
          //   valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
          // ),
          // SizedBox(height: 22.h),
        ],
      ),
    );
  }
}
