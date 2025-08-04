import 'package:flutter/material.dart';
import 'package:mappy/components/u_appbar.dart';
import 'package:mappy/variables.dart';

class StudentsListScreen extends StatelessWidget {
  const StudentsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    titleNotifier.value = 'Students List';
    return Scaffold(
      appBar: UAppbar(),
      body: Padding(padding: EdgeInsets.all(12.0), child: buildStudentList()),
    );
  }

  onCardPressed(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      '/studentsProfile',
      arguments: {'student': students[index], 'grade': students[index]['class']},
    );
  }

  buildStudentCard(
    Map<String, String> student,
    BuildContext context, {
    double bottomPadding = 8.0,
  }) => Column(
    children: [
      Card(
        child: ListTile(
          onTap: () => onCardPressed(context, students.indexOf(student)),
          leading: CircleAvatar(child: Image.asset("assets/images/user.png")),
          title: Text(student['name'] ?? 'Unknown'),
          subtitle: Text(student['class'] ?? 'Unknown Class'),
          trailing: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.blueAccent,
            onPressed: () => onCardPressed(context, students.indexOf(student)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('View Profile'),
            ),
          ),
        ),
      ),
      SizedBox(height: bottomPadding),
    ],
  );

  buildStudentList() => ListView.builder(
    itemCount: students.length,
    itemBuilder: (context, index) {
      final isLast = index == students.length - 1;
      return buildStudentCard(
        students[index],
        context,
        bottomPadding: isLast ? 0.0 : 8.0,
      );
    },
  );
}
