import 'package:estados_s/models/usuario.dart';

class _UsuarioService {
  Usuario? _usuario; //tomar en cuenta para no usar el late pasarlo a nullable

  Usuario? get usuario => this._usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
  }
}

final usuarioService = new _UsuarioService();
