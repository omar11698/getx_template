import 'package:intl/intl.dart';
/*
NumberFormatter.formatCurrency(12345);   // $12,345.00
NumberFormatter.formatNumber(12345678);  // 12,345,678
*/
class ONumberFormatter {
  static String formatCurrency(num number, {String locale = 'en_US', String symbol = '\$'}) {
    final format = NumberFormat.currency(locale: locale, symbol: symbol);
    return format.format(number);
  }

  static String formatNumber(num number, {String locale = 'en_US'}) {
    final format = NumberFormat.decimalPattern(locale);
    return format.format(number);
  }
}
