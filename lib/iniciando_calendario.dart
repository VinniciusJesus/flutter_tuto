import 'package:table_calendar/table_calendar.dart';

class IniciandoCalendario {
  // Variaveis necessarias para o calendario
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  final kToday = DateTime.now();
}
