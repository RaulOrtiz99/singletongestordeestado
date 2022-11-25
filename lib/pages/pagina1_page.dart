import 'package:estados_s/bloc/user/user_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/usuario.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina1")),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (_, state) {
          return state.existUser
              ? InformacionUsuario(user: state.user!)
              : const Center(child: Text("No hay usuario seleccionado"));

          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          //todo: navegacion entre las 2 vistas
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final User user;

  const InformacionUsuario({super.key, required this.user});

  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text("General",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Divider(),
          ListTile(
            title: Text("Nombre:${user.nombre}"),
          ),
          ListTile(
            title: Text("Edad: ${user.edad}"),
          ),
          const Text(
            "Profesiones",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),

          ...user.profesiones
              .map((prof) => ListTile(
                    title: Text(prof),
                  ))
              .toList(),
          // ListTile(
          //   title: Text("Profesion1:"),
          // ),
          // ListTile(
          //   title: Text("Profesion2:"),
          // ),
          // ListTile(
          //   title: Text("Profesion3:"),
          // ),
        ],
      ),
    );
  }
}
