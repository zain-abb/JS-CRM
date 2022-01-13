class TextFieldValidator {
  static String? validateEmail(String? value) {
    var emptyEmailError = 'Email address is empty';
    var invalidEmailError = 'Invalid email address. Please try again';

    print(value.toString());

    if (value!.isEmpty) {
      return emptyEmailError;
    } else {
      final emailValidate = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);

      if (!emailValidate) {
        return invalidEmailError;
      } else {
        return null;
      }
    }
  }
}
