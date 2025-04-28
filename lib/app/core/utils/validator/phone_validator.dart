class OPhoneValidator {
  static bool isValid(String phone) {
    return RegExp(r'^\+?[0-9]{7,15}$').hasMatch(phone);
  }
}
