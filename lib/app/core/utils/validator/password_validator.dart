class OPasswordValidator {
  static bool isValid(String password, {int minLength = 8}) {
    if (password.length < minLength) return false;
    return true;
  }

  static bool isStrong(String password) {
    return RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[\W_]).{8,}$')
        .hasMatch(password);
  }
}
