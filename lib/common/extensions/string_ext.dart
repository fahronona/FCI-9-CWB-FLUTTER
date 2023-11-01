import 'package:intl/intl.dart';

extension StringExt on String {
  String get currencyFormatRpString => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp. ',
        decimalDigits: 0,
      ).format(this);
}
