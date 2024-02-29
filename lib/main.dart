import 'package:flutter/material.dart';

void main() => runApp(const Miapptabbar());

class Miapptabbar extends StatelessWidget {
  const Miapptabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo tabbar",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Mipaginainicial(),
    );
  }
}

class Mipaginainicial extends StatefulWidget {
  const Mipaginainicial({Key? key}) : super(key: key);

  @override
  State<Mipaginainicial> createState() => _MipaginainicialState();
}

class _MipaginainicialState extends State<Mipaginainicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            title: Text("tabbar David rodriguez "),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Raptor",
                icon: Icon(Icons.car_crash),
              ),
              Tab(
                text: "Shelby",
                icon: Icon(Icons.cable),
              ),
              Tab(
                text: "mustang",
                icon: Icon(Icons.access_alarm_rounded),
              ),
            ] //Texto icono,
                )),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Alerta",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Alerta2",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 50),
            ),
          ),
          Center(
            child: Text(
              "Alerta3",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 50),
            ),
          ),
        ]),
      ),
    );
  }
}
