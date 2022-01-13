import 'package:flutter/material.dart';

import 'app_state.dart';

class JSCRMBackButtonDispatcher extends RootBackButtonDispatcher {
  final AppState appState;

  JSCRMBackButtonDispatcher(this.appState) : super();

  @override
  Future<bool> didPopRoute() async {
    // appState.moveToBackScreen();
    return true;
  }
}
