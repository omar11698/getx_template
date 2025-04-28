class OTextValidator {
  static bool isNotEmpty(String text) {
    return text.trim().isNotEmpty;
  }

  static bool hasMinLength(String text, int minLength) {
    return text.trim().length >= minLength;
  }

  static bool hasMaxLength(String text, int maxLength) {
    return text.trim().length <= maxLength;
  }
}
