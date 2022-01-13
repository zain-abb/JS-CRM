import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:js_crm/services/error/failure.dart';
import 'package:js_crm/utils/constants/enums/page_state_enum.dart';
import 'package:js_crm/utils/router/app_state.dart';
import 'package:js_crm/utils/router/models/page_action.dart';

class LoginPageViewModel {
  final TextEditingController emailController = TextEditingController();
  final String emailLabelText = 'Enter your email';
  final String emailHintText = 'Email Address';
  final TextInputType emailKeyboardType = TextInputType.emailAddress;

  final TextEditingController passwordController = TextEditingController();
  final String passwordLabelText = 'Enter your password';
  final String passwordHintText = 'Password';
  final TextInputType passwordKeyboardType = TextInputType.text;

  ValueNotifier<bool> isLoadingNotifier = ValueNotifier(false);
  ValueNotifier<bool> skipLoadingNotifier = ValueNotifier(true);

  VoidCallback? onMoveToNextScreen;
  ValueChanged<String>? onErrorMessage;

  void handleError(Either<Failure, dynamic> either) {
    skipLoadingNotifier.value = false;
    isLoadingNotifier.value = false;
    either.fold((l) => onErrorMessage?.call(l.message), (r) => null);
  }

  void moveBack() {
    var appState = GetIt.I.get<AppState>();
    appState.currentAction = const PageAction(state: PageState.pop);
  }

  void onEmailFieldSubmitted(String value) {}
}
