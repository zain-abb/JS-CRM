import 'package:flutter/material.dart';

import '../constants/enums/app_state_enum.dart';
import '../constants/enums/page_state_enum.dart';
import 'models/page_action.dart';
import 'models/page_config.dart';

/// This class contains the global state of the app
class AppState extends ChangeNotifier {
  AppStateEnum appStateEnum = AppStateEnum.none;

  PageAction _currentAction = const PageAction();
  PageAction get currentAction => _currentAction;

  ValueChanged<String>? globalErrorShow;

  /// This method resets your page action
  void resetCurrentAction() {
    _currentAction = PageAction(state: PageState.replaceAll, page: splashPageConfig);
  }

  /// this method is used to change the page of the app
  set currentAction(PageAction action) {
    _currentAction = action;
    notifyListeners();
  }

  void moveToBackScreen() {
    currentAction = const PageAction(state: PageState.pop);
  }
}
