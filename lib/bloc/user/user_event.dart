//esta clase es para disparar acciones que disparara el bloc y cambiara el estate

part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class ActivateUser extends UserEvent {
  final User user;

  ActivateUser(this.user);
}
