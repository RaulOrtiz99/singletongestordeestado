import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:meta/meta.dart';
part 'usuarios_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  //este es el estado inicial que tendra el cubit por defecto
  UsuarioCubit() : super(UsuarioInitial());
}