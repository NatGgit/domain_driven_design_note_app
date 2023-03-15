class ValidationHelper {
  static String? validateEmail(String input) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
    if (RegExp(emailRegex).hasMatch(input)) {
      return null;
    } else {
      return 'Wprowadź poprawny email';
    }
  }

  static String? validatePassword(String input) {
    if (input.length >= 6) {
      return null;
    } else {
      return 'Hasło powinno mieć co najmnie 6 znaków';
    }
  }
}
