import 'package:flutter/material.dart';

@immutable
abstract class AuthEvent{
  const AuthEvent();
}

class AuthEventInitialize extends AuthEvent{
  const AuthEventInitialize();
}

class AuthSendEmailVerificationEvent extends AuthEvent {
   const AuthSendEmailVerificationEvent();
}

class AuthRegisterEvent extends AuthEvent{
  final String email;
  final String password;
  const AuthRegisterEvent(this.email, this.password);

}

class AuthShouldRegisterEvent extends AuthEvent {
  const AuthShouldRegisterEvent();
}

class AuthEventLogIn extends AuthEvent{
  final String email;
  final String password;
  const AuthEventLogIn(this.email, this.password);
}

class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}