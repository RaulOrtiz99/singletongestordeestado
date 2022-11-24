class Usuario {
  String nombre;
  int edad;
  List<String> profesiones;

  //Constructor por defecto
  Usuario(
      {required this.nombre, required this.edad, required this.profesiones});

  Usuario copyWith({String? nombre, int? edad, List<String>? profesiones}) {
    return Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones);
  }
}
