import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError { invalid }

class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  ConfirmedPassword.pure({this.password = ""}) : super.pure('');

  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);
  final String password;

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    throw UnimplementedError();
  }
}
