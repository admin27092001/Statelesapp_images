import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

// Guión bajo es clase privada _
class _MyButtonState extends State<MyButton> {
  String flutterText = "";
  String imagenombre = "";

  int index = 0;

  List<String> collections = [
    'Flutter',
    'es',
    'Genial',
    'Creado',
    'por',
    'Adolfo',
    'Melendez',
    'Rodriguez'
  ];

  List<String> image = [
    'foto1.jpg',
    'foto2.png',
    'foto3.jpg',
    'foto4.jpg',
    'foto5.jpg',
    'foto6.jpg',
    'foto7.png',
    'foto8.jpg'
  ];

  void onPressedButton() {
    setState(() {
      flutterText = collections[index];
      imagenombre = image[index];

      index = index < 7 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 151, 151),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 55, 4, 78),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(10.0),
                child: Text('Mi  aplicacion Stateles 190928')),
            Image.asset(
              'logo.png',
              fit: BoxFit.contain,
              height: 32,
              alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Image(
                        image: AssetImage(imagenombre),
                        height: 253,
                        fit: BoxFit.contain),
                  ),
                ],
              ),
              Text(
                flutterText,
                style: TextStyle(fontSize: 25, color: Colors.blueGrey),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton(
                  child: Text("Actualizar"),
                  onPressed: onPressedButton,
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 211, 77, 0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
