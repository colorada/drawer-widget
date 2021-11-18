import 'package:flutter/material.dart';
import 'package:drawer/pages/settings.dart';
import 'package:drawer/pages/battery.dart';

void main() {
  runApp(MaterialApp(
    home: const MyDrawer(),
    routes: <String, WidgetBuilder>{
      Settings.routeName: (BuildContext context) => const Settings(),
      Battery.routeName: (BuildContext context) => const Battery(),
    },
  ));
}

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  Drawer _getDrawer(BuildContext context) {
    var header = const DrawerHeader(
      child: Text("Opciones"),
    );
    var info = const AboutListTile(
      child: Text("Informacion"),
      applicationVersion: "v1.0.0",
      applicationName: "test drawer",
      applicationIcon: Icon(Icons.favorite),
      icon: Icon(Icons.info),
    );

    ListTile _getItem(Icon icon, String description, String route) {
      return ListTile(
        leading: icon,
        title: Text(description),
        onTap: () {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },
      );
    }

    ListView listView = ListView(
      children: <Widget>[
        header,
        _getItem(const Icon(Icons.settings), "Configuracion", "/configuracion"),
        _getItem(const Icon(Icons.home), "Pagina principal", "/"),
        _getItem(const Icon(Icons.battery_charging_full), "Bateria", "/bateria"),
        info,
      ],
    );

    return Drawer(child: listView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      drawer: _getDrawer(context),
    );
  }
}
