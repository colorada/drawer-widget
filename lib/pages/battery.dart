import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String routeName = "/bateria";

  const Battery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bateria"),
      ),
      body: const Center(
        child: Text("Pantalla de bateria"),
      ),
    );
  }
}
