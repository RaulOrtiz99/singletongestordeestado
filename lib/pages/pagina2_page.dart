import 'package:estados_s/bloc/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

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
                final newUser =
                    User(nombre: 'raul', edad: 23, profesiones: ['1', '2']);

                userBloc.add(ActivateUser(newUser));
              },
              child: Text(
                "Establecer Usuario",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ChangeUserAge(20));
              },
              child: Text(
                "Cambiar edad",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
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
