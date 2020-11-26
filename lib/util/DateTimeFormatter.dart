enum Format {
  DATE_HOUR,
  HOUR_DATE
}

class DateTimeFormatter {
  static String format(DateTime dateTime, Format format) {
    if (format == Format.DATE_HOUR) {
      return "${dateTime.year}-${dateTime.month.toString().padLeft(2,'0')}-${dateTime.day.toString().padLeft(2,'0')} ${dateTime.hour.toString().padLeft(2,'0')}:${dateTime.minute.toString().padLeft(2,'0')}:${dateTime.second.toString().padLeft(2,'0')}.${dateTime.millisecond.toString().padLeft(3,'0')}";
    } else {
      return "${dateTime.hour.toString().padLeft(2,'0')}:${dateTime.minute.toString().padLeft(2,'0')}:${dateTime.second.toString().padLeft(2,'0')}.${dateTime.millisecond.toString().padLeft(3,'0')} ${dateTime.year}-${dateTime.month.toString().padLeft(2,'0')}-${dateTime.day.toString().padLeft(2,'0')}";
    }
  }
}