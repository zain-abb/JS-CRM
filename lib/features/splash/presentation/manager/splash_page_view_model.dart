import 'dart:async';

import 'package:get_it/get_it.dart';

import '../../../../utils/constants/enums/page_state_enum.dart';
import '../../../../utils/router/app_state.dart';
import '../../../../utils/router/models/page_action.dart';
import '../../../../utils/router/models/page_config.dart';

class SplashPageViewModel {
  void moveForward() {
    var appState = GetIt.I.get<AppState>();
    Timer(const Duration(seconds: 2), () {
      appState.currentAction = PageAction(state: PageState.replace, page: loginPageConfig);
    });
  }
}
