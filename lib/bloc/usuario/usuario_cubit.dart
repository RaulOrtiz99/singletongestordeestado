import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meta/meta.dart';

import '../../models/usuario.dart';
part 'usuarios_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  //este es el estado inicial que tendra el cubit por defecto
  UsuarioCubit() : super(UsuarioInitial());

//asi se emite un usuario
  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void cambiarEdad(int edad) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad: 30);
      emit(UsuarioActivo(newUser));
    }
  }
}
