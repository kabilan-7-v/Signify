import 'package:flutter/material.dart';
import 'package:calendar_view/calendar_view.dart';

class CalendarTeacher extends StatefulWidget {
  const CalendarTeacher({super.key});

  @override
  State<CalendarTeacher> createState() => _CalendarTeacherState();
}

class _CalendarTeacherState extends State<CalendarTeacher> {
  DateTime get _now => DateTime.now();
  String curDate = DateTime.now().month.toString();

  @override
  Widget build(BuildContext context) {
    List<CalendarEventData> events = [
      CalendarEventData(
        date: _now,
        title: "Project meeting",
        description: "Today is project meeting.",
        startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
        endTime: DateTime(_now.year, _now.month, _now.day, 22),
      ),
      CalendarEventData(
        date: _now.add(const Duration(days: 1)),
        startTime: DateTime(_now.year, _now.month, _now.day, 18),
        endTime: DateTime(_now.year, _now.month, _now.day, 19),
        title: "Wedding anniversary",
        description: "Attend uncle's wedding anniversary.",
      ),
      CalendarEventData(
        date: _now,
        startTime: DateTime(_now.year, _now.month, _now.day, 14),
        endTime: DateTime(_now.year, _now.month, _now.day, 17),
        title: "Football Tournament",
        description: "Go to football tournament.",
      ),
      CalendarEventData(
        date: _now.add(const Duration(days: 3)),
        startTime: DateTime(
            _now.add(const Duration(days: 3)).year,
            _now.add(const Duration(days: 3)).month,
            _now.add(const Duration(days: 3)).day,
            10),
        endTime: DateTime(
            _now.add(const Duration(days: 3)).year,
            _now.add(const Duration(days: 3)).month,
            _now.add(const Duration(days: 3)).day,
            14),
        title: "Sprint Meeting.",
        description: "Last day of project submission for last year.",
      ),
      CalendarEventData(
        date: _now.subtract(const Duration(days: 2)),
        startTime: DateTime(
            _now.subtract(const Duration(days: 2)).year,
            _now.subtract(const Duration(days: 2)).month,
            _now.subtract(const Duration(days: 2)).day,
            14),
        endTime: DateTime(
            _now.subtract(const Duration(days: 2)).year,
            _now.subtract(const Duration(days: 2)).month,
            _now.subtract(const Duration(days: 2)).day,
            16),
        title: "Team Meeting",
        description: "Team Meeting",
      ),
      CalendarEventData(
        date: _now.subtract(const Duration(days: 2)),
        startTime: DateTime(
            _now.subtract(const Duration(days: 2)).year,
            _now.subtract(const Duration(days: 2)).month,
            _now.subtract(const Duration(days: 2)).day,
            10),
        endTime: DateTime(
            _now.subtract(const Duration(days: 2)).year,
            _now.subtract(const Duration(days: 2)).month,
            _now.subtract(const Duration(days: 2)).day,
            12),
        title: "Chemistry Viva",
        description: "Today is Joe's birthday.",
      ),
    ];
    return CalendarControllerProvider(
        controller: EventController()..addAll(events),
        child: Scaffold(
          body: MonthView(
            headerBuilder: (date) => const SizedBox(),
            onPageChange: (date, page) => setState(() {
              curDate = date.month.toString();
              setState(() {});
            }),
          ),
          appBar: AppBar(
            title: const Text("November - 01 -2024 "),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 243, 227, 173),
          ),
        ));
  }
}
