import 'package:aplications/screens/datos.dart';
import 'package:flutter/material.dart';
import 'screens/sreensQR.dart';
import 'screens/screenspechtext.dart';
import 'screens/screenssensor.dart';
import 'screens/screensgeolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    QR(),
    SpeechText(),
    Screenssensor(),
    Location(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  // Fijo para asegurar el comportamiento correcto
        backgroundColor: Colors.green,        // Forzamos el fondo blanco
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Text',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.motion_photos_on),
            label: 'Ubicacion',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber, // Color de los ítems seleccionados
        unselectedItemColor: Colors.black,     // Color de los ítems no seleccionados
        onTap: _onItemTapped,
      ),
    );
  }
}
