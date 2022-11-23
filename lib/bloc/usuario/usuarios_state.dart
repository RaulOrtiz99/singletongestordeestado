part of 'usuario_cubit.dart';

//esta clase se encarga de manejar los estados de

@immutable
abstract class UsuarioState {}

//esta clase es el estado inicial de la aplicacion
class UsuarioInitial extends UsuarioState {
  final existeUsuario = false;

  @override
  String toString() {
    return 'UsuarioInicial: existeUsuario:false';
  }
}
