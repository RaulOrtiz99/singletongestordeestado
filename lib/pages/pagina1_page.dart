import 'package:estados_s/bloc/usuario/usuario_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pagina1")),
      body: BlocBuilder<UsuarioCubit, UsuarioState>(
        builder: (_, state) {
          print(state);
          if (state is UsuarioInitial) {
            return Center(
              child: Text("No hay informacion del usuario"),
            );
          } else {
            return InformacionUsuario();
          }

          return CircularProgressIndicator();
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
  const InformacionUsuario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: const [
          Text("General",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(
            title: Text("Nombre:"),
          ),
          ListTile(
            title: Text("Edad:"),
          ),
          Text(
            "Profesiones",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Profesion1:"),
          ),
          ListTile(
            title: Text("Profesion2:"),
          ),
          ListTile(
            title: Text("Profesion3:"),
          ),
        ],
      ),
    );
  }
}
