import 'dart:js';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final Size size = MediaQuery.of(context).size;
    setState(() {
      isLoading = false;
    });
    return Scaffold(
      backgroundColor: Colors.blue,
      body: isLoading
          ? Center(
              child: Container(
              color: Colors.green,
              height: size.height / 20,
              width: size.height / 20,
              child: CircularProgressIndicator(),
            ))
          : body(isLoading),
    );
  }
}

Widget body(bool isLoading) {
  return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF0f0882), Color(0xFF00d4ff)],
            begin: Alignment.topCenter,
            end: AlignmentDirectional.bottomCenter),
  ),);
}
