import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:js_crm/utils/constants/app_paths.dart';
import 'package:js_crm/utils/router/pages.dart';

import 'models/page_config.dart';

class JSCRMRouterParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.isEmpty) {
      return SynchronousFuture(splashPageConfig);
    }

    final path = '/' + uri.pathSegments[0];

    switch (path) {
      case splashPath:
        return SynchronousFuture(splashPageConfig);

      case loginPath:
        return SynchronousFuture(loginPageConfig);

      default:
        return SynchronousFuture(splashPageConfig);
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.splashPage:
        return const RouteInformation(location: splashPath);
      case Pages.loginPage:
        return const RouteInformation(location: loginPath);
    }
  }
}
