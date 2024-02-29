import 'package:intl/intl.dart';

String monthYearFormatter(DateTime date) {
  return DateFormat('MMM yy').format(date);
}
