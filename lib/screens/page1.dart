import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
 const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Busqueda aleatoria"),
      ),
      body: ListView(
        children: [
            Image.asset(
                'images/i1.jpg',
                width: 700,
                height: 340,
                fit: BoxFit.cover,
              ),
          Container(
       padding:
        const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
       child: Column(
        children: [
          Container(
           padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text("Internet",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Text("Autor: Desconocido",
                  style: TextStyle(color: Colors.grey[500])),
       const Text(
        'Es un conjunto descentralizado de redes de comunicaciones' 
        '  interconectadas, que utilizan la familia de protocolos TCP/IP,' 
        'lo cual garantiza que las redes físicas heterogéneas que' 
        'la componen constituyen una red lógica única de alcance mundial.' 
        'Sus orígenes se remontan a 1969, cuando se estableció la primera' 
        'conexión de computadoras, conocida como ARPANET, entre tres' 
        'universidades en California (Estados Unidos).',
        softWrap: true,
      ),
      Container(
      padding: const EdgeInsets.all(20.0),
        child: Image.asset(
          'images/i2.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
      ),
      Container(
       padding:
        const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 20.0, top: 20.0),
       child: Column(
        children: [
          Container(
           padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text("Tecnología de internet",
                      style: TextStyle(fontWeight: FontWeight.bold))
                      ),
              Text("Enrutamiento y capas de servicio",
                  style: TextStyle(color: Colors.grey[500])),
       const Text(
        'Los Proveedores de Servicios de Internet (ISP) conectan a clientes, quienes representan la parte más baja en la jerarquía de enrutamiento, con otros clientes de otros ISP a través de capas de red más altas o del mismo nivel. En lo alto de la jerarquía de enrutamiento están las redes de capa 1, grandes compañías de telecomunicaciones que intercambian tráfico directamente con otras',
        softWrap: true,
      ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Salir"),
          ),//reised
          ],
         )
        ),
       ],
       ),
          )],
      ),
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

