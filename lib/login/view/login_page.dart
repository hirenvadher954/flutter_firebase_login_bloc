import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_google_sin_in/login/cubit/login_cubit.dart';
import 'package:bloc_google_sin_in/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Page page() => MaterialPage(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: BlocProvider(
            create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
            child: LogInForm()),
      ),
    );
  }
}
