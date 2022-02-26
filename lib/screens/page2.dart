import 'package:flutter/material.dart';
//import 'package:examen_u1/screens/animacion.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Lista de Lectura"),
      ),
      body: ListView(
         // child: Column(
          children: [
            /*Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(32.0),
                padding: const EdgeInsets.all(32.0),
                color: Colors.amber[600],
                child: const Text("Hola este es mi cuerpo")),*/
            Container(
              margin: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Row(
                    children: [
                     
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                       Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  ¿Que es la Wikipedia?",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l2.jpg",
                        width: 100,
                        height: 100,
                      ),
                       Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Albert Einstein",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Biosfera",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Google, Buscador mas importante",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Router, Redes LAN",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Banderas de Paises",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Comida tipica de Shuar",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l2.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Sistema solar",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l1.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  Mapa Mundi",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/l2.jpg",
                        width: 100,
                        height: 100,
                      ),
                      Container(
                       padding: const EdgeInsets.only(bottom: 10.0),
                       child: const Text("  El principito",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
                    ],
                  ),
                ],
              ),
            ),
             // ignore: deprecated_member_use
             RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Salir"),
          ),
          ],
        ),
        //backgroundColor: Colors.blue
        //),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.share), label: "Share"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete), label: "Delete")
        ],
      ),
     );
  }
}