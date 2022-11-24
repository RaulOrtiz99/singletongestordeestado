import 'package:estados_s/bloc/usuario/usuario_cubit.dart';
import 'package:estados_s/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina2"),
      ),
      body: Center(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final newUser = Usuario(
                    nombre: 'Raul',
                    edad: 23,
                    profesiones: ['Profesion1,profesion2']);
                // context.read<UsuarioCubit>().seleccionarUsuario(newUser);
                usuarioCubit.seleccionarUsuario(newUser);
              },
              // ignore: prefer_const_constructors
              child: Text(
                "Establecer texto",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCubit.cambiarEdad(30);
              },
              // ignore: prefer_const_constructors
              child: Text(
                "Cambiar edad",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                usuarioCubit.agregarProfesion();
              },
              // ignore: prefer_const_constructors
              child: Text(
                "Agregar una profesion",
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )),
      ),
    );
  }
}
