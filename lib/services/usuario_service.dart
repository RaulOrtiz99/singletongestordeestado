import 'package:estados_s/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario get usuario => this.usuario;
  bool get existeUsuario => (this._usuario != null) ? true : false;

  set usuario(Usuario user) {
    this._usuario = user;
    notifyListeners(); //esto le manda un mensaje a todos los lugares donde haya una instancia
  }
}
