import 'package:flutter/material.dart';
import 'package:examen_u1/screens/page1.dart';
import 'package:examen_u1/screens/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, color}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WIKIPEDIA',
       debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        
        home: const Interface());
  }
}

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(children: [
          
      Image.asset(
        'images/wiki3.jpg',
        width: 600,
        height: 340,
        fit: BoxFit.cover,
      ),
      const TitleSection(),
      Center(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10.0, left: 100.0, right: 100.0),
                  child: const Text("Wikipedia",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Text("Fundación Wikimedia by Jimmy Wales",
                  style: TextStyle(color:Colors.grey[500])),
            const Text(
            '                                                    '
            '                                                    '
            '   Wikipedia es una enciclopedia libre, políglota y editada' 
            ' de manera colaborativa. Es un proyecto de crear una'
            '   enciclopedia libre en la red. Cada uno puede aportar sus'
            '   conocimientos sobre cualquier tema para crear una base' 
            'de datos con toda la sabiduría humana. Es administrada' 
            'por la Fundación Wikimedia, una organización sin ánimo' 
            'de lucro cuya financiación está basada en donaciones.'
            '                                                    '
            '                                                    '
            '                                                    '
            'Fue creada el 15 de enero de 2001 por Jimmy Wales y' 
            'Larry Sanger, y es la mayor y más popular obra de'
            'consulta en Internet. Desde su fundación, Wikipedia'
            'no solo ha ganado en popularidad se encuentra entre' 
            'los 15 sitios web más populares del mundo, sino que'
            'además su éxito ha propiciado la aparición de proyectos' 
            'hermanos: Wikcionario, Wikilibros, Wikiversidad, Wikiquote,' 
            'Wikinoticias, Wikisource, Wikiespecies y Wikiviajes.',
            softWrap: true,
      ),
          Container(
            padding: const EdgeInsets.only(left: 100.0, right: 100.0, top: 15.0),
            // ignore: deprecated_member_use
            child: RaisedButton(
              child: const Text('Busqueda aleatoria'),
              onPressed: () {
                // Navega a la segunda ruta cuando se pulsa.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Page2()),
                );
              },
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            child: const Text("Mi lista de Lectura"),
            onPressed: () {
              //Navigator.pop(context);
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page3()),
          );
          },
            //child: const Text("Mi lista de Lectura"),
          )
        ],
      )),
      //
        /* Container(
        child: Row(
         // padding: const EdgeInsets.only(bottom: 8.0),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _builButtonColumn(Colors.blue, Icons.call, 'CALL'),
            _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
            _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
          ],
        ),
      )*/

    ]),
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "User")
        ],
      ), 
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28.0),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  decoration:const InputDecoration(
                    border: InputBorder.none,
                      hintText: 'Introduce el tema que quieres investigar'
                  ),
                )
                
            ],
          )),
          // ignore: prefer_const_constructors
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

Column _builButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      )
    ],
  );
}

// ignore: avoid_unnecessary_containers
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _builButtonColumn(Colors.blue, Icons.call, 'CALL'),
      _builButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
      _builButtonColumn(Colors.blue, Icons.share, 'SHARE'),
    ],
  ),
);


