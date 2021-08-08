import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_google_sin_in/sign_up/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute(builder: (_) => SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign up')),
      body: BlocProvider<SignUpCubit>(
        create: (_) => SignUpCubit(context.read<AuthenticationRepository>()),
      ),
    );
  }
}
