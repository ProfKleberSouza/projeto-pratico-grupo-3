import 'package:intl/intl.dart';

String dateFormat(DateTime date,
    {String format = "d 'de' MMMM", String locale = "pt_BR"}) {
  return DateFormat(format, locale).format(date);
}