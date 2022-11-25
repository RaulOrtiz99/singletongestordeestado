import 'package:estados_s/bloc/user/user_bloc.dart';
import 'package:estados_s/pages/pagina1_page.dart';
import 'package:estados_s/pages/pagina2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => UserBloc())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          initialRoute: 'pagina1',
          routes: {
            'pagina1': (_) => Pagina1Page(),
            'pagina2': (_) => Pagina2Page()
          }),
    );
  }
}
