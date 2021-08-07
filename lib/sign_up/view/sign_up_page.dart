import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (_) => SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up')),
      body: Container(),
    );
  }
}
