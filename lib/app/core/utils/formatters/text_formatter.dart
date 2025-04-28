class OTextFormatter {
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  static String capitalizeEachWord(String text) {
    return text.split(' ').map((word) => capitalize(word)).join(' ');
  }

  static String removeExtraSpaces(String text) {
    return text.replaceAll(RegExp(r'\s+'), ' ').trim();
  }
}
/*
TextFormatter.capitalize('hello'); // Hello
TextFormatter.capitalizeEachWord('hello world'); // Hello World
TextFormatter.removeExtraSpaces('   hello   world  '); // hello world
*/ 