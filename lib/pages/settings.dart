import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const String routeName = "/configuracion";

  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuracion"),
      ),
      body: const Center(
        child: Text("Pantalla de configuracion"),
      ),
    );
  }
}
