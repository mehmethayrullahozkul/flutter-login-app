part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class AnonymousLoginButtonPressed extends LoginEvent {
  final String username;

  const AnonymousLoginButtonPressed({
    required this.username,
  });

  @override
  List<Object> get props => [username];

  @override
  String toString() => 'AnonymousLoginButtonPressed { username: $username}';
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  const LoginButtonPressed({
    required this.username,
    required this.password,
  });

  @override
  List<Object> get props => [username, password];

  @override
  String toString() =>
      'LoginButtonPressed { username: $username, password: $password }';
}
