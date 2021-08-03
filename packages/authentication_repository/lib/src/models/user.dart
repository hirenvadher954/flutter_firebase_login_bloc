import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({required this.id, this.name, this.photo, this.email});

  final String id;
  final String? name;
  final String? photo;
  final String? email;

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [id, name, photo, email];
}
