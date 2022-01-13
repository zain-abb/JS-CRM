import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:js_crm/utils/router/js_crm_back_button_dispatcher.dart';
import 'package:js_crm/utils/router/js_crm_router_delegate.dart';
import 'package:js_crm/utils/router/js_crm_router_parser.dart';

import '../utils/constants/app_theme.dart';
import 'globals.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late JSCRMRouterDelegate delegate;
  late JSCRMBackButtonDispatcher backButtonDispatcher;
  late JSCRMRouterParser parser = JSCRMRouterParser();

  @override
  void initState() {
    delegate = JSCRMRouterDelegate(sl());
    backButtonDispatcher = JSCRMBackButtonDispatcher(sl());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'JS CRM',
        theme: AppTheme.appTheme,
        routerDelegate: delegate,
        backButtonDispatcher: backButtonDispatcher,
        routeInformationParser: parser,
      ),
    );
  }
}
