import 'dart:developer';

import 'package:fechas_edad/modelofecha.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controlfecha extends GetxController {
  final Rx<DateTime> _fn = DateTime.now().obs;
  final Rx<dynamic> _edad = 0.obs;

  //TextEditingController controltexto = TextEditingController();
  int get edadfinal => _edad.value;

  void selectDate() async {
    final DateTime? selFN = await showDatePicker(
      context: Get.context!,
      initialDate: _fn.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2023),
    );
    log(selFN.toString());
    if (selFN != null) {
      _fn.value = selFN;
      FechaEdad fechaNac = FechaEdad(fechanac: _fn.value);
      _edad.value = fechaNac.edad;

      log(_edad.value.toString());

      //     controltexto.text = DateFormat('DD-MM-yyyy').format(_fn.value).toString();
    }
  }
}
