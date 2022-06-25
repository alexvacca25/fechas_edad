class FechaEdad {
  DateTime fechanac;

  FechaEdad({required this.fechanac});

  int get edad {
    Duration calculoedad;
    calculoedad = DateTime.now().difference(fechanac);
    return (calculoedad.inDays / 365).round();
  }
}
