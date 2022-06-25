import 'package:fechas_edad/ControlarFecha.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fechas extends StatelessWidget {
  const Fechas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Controlfecha controlarfecha = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manejo de Fechas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Seleccione una Fecha'),
            const SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 40,
              child: Obx(() => controlarfecha.edadfinal == 0
                  ? Icon(
                      Icons.date_range,
                      color: Colors.grey[800],
                    )
                  : Text(controlarfecha.edadfinal.toString())),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => controlarfecha.selectDate(),
                child: const Text('Seleccione la Fecha'))
          ],
        ),
      ),
    );
  }
}
