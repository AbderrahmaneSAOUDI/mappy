import 'package:flutter/material.dart';
import 'package:mappy/components/u_appbar.dart';
import 'package:mappy/variables.dart';

class StudentsProfileScreen extends StatelessWidget {
  const StudentsProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>?;

    titleNotifier.value = 'Students Profile';
    return Scaffold(
      appBar: UAppbar(
        leading: MaterialButton(
          onPressed: () => onBackPressed(context),
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).appBarTheme.iconTheme?.color,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: args != null
            ? buildStudentProfile(context, args)
            : Center(
                child: Text(
                  'No student data provided.',
                  style: TextStyle(fontSize: 18.0, color: Colors.red),
                ),
              ),
      ),
    );
  }

  buildStudentProfile(BuildContext context, Map args) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 64.0,
                child: Image.asset("assets/images/user.png"),
              ),
              SizedBox(height: 20.0),
              Text(
                args['student']['name'] ?? 'Unknown',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                args['student']['class'] ?? 'Unknown Class',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () => onButtonPressed(context),
                color: Colors.blueAccent,
                elevation: 0,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 25.8,
                  ),
                  child: Text(
                    'View Results',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onBackPressed(BuildContext context) {
    Navigator.maybePop(context);
  }

  onButtonPressed(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/studentsResult',
      arguments: {'student': students[0]},
    );
  }
}
