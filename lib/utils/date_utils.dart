import 'package:intl/intl.dart';

class CustomDateUtils {
  String formatDate(DateTime date) {
    //  Tue, 23 Dec, 2025 | 06:45 AM
    var formattedDate = DateFormat('E, d-MMM-yyyy | HH:mm a').format(date);
    return formattedDate;
  }
}
