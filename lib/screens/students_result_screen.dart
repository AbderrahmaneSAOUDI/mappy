import 'package:flutter/material.dart';
import 'package:mappy/components/u_appbar.dart';
import 'package:mappy/variables.dart';

class StudentsResultScreen extends StatelessWidget {
  const StudentsResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppbar(
        leading: MaterialButton(
          onPressed: () => onBackPressed(context),
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).appBarTheme.foregroundColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: buildStudentResult(context),
      ),
    );
  }

  onBackPressed(BuildContext context) {
    Navigator.maybePop(context);
  }

  buildStudentResult(BuildContext context) {
    titleNotifier.value = 'Students Result';
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        elevation: 6.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text("data")],
          ),
        ),
      ),
    );
  }
}
