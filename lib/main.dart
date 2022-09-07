import 'package:ayuda/pages/pagina2.dart';
import 'package:flutter/material.dart';

void main() => runApp(Ingreso());

class Ingreso extends StatelessWidget {
  const Ingreso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(context),
    );
  }
}

Widget cuerpo(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage("https://pbs.twimg.com/media/DyigMf0UwAIeqTx.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        nombre(),
        usuario(),
        pass(),
        entrar(),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Pagina2()));
          },
          child: Text("Ir la Pagina"),
        ),
      ],
    )),
  );
}

Widget nombre() {
  return Text(
    "Ingreso",
    style: TextStyle(
        color: Colors.deepOrange, fontSize: 35, fontWeight: FontWeight.bold),
  );
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget pass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget entrar() {
  return TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(16.0),
      textStyle: TextStyle(fontSize: 20),
      backgroundColor: Colors.deepOrange,
    ),
    onPressed: () {},
    child: Text(
      "Entrar",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

Widget entrar2() {
  return TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(16.0),
      textStyle: TextStyle(fontSize: 20),
      backgroundColor: Colors.deepOrange,
    ),
    onPressed: () {},
    child: Text(
      "Entrar",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

Widget botonAlert() {
  return TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(16.0),
      textStyle: TextStyle(fontSize: 20),
      backgroundColor: Colors.cyan.shade400,
    ),
    onPressed: () {
      print("funciona");
    },
    child: Text("Alerta"),
  );
}
