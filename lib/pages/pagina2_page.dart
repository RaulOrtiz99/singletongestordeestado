import 'package:estados_s/models/usuario.dart';
import 'package:estados_s/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina2"),
      ),
      body: Center(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                final usuarioService =
                    Provider.of<UsuarioService>(context, listen: false);
                final newUser = new Usuario("pepe", 20, ["e,e,e,e,e"]);
                usuarioService.usuario = newUser;
              },
              child: const Text(
                "Establecer texto",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                "Cambiar edad",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: const Text(
                "Agregar una profesion",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )),
      ),
    );
  }
}
