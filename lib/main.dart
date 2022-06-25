import 'package:fechas_edad/ControlarFecha.dart';
import 'package:fechas_edad/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(Controlfecha());
  runApp(const App());
}
