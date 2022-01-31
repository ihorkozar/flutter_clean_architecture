import 'package:flutter/material.dart';

class StudentAuth extends StatefulWidget {
  const StudentAuth({
    Key? key,
  }) : super(key: key);

  @override
  State<StudentAuth> createState() => _StudentAuthState();
}

class _StudentAuthState extends State<StudentAuth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(child: Text('1st tab')),
    );
  }
}