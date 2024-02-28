import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App ListView Nevarez",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaInicio(),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  List<String> images = [
    "assets/images/avatar1.png",
    "assets/images/avatar10.jpg",
    "assets/images/avatar2.jpg",
    "assets/images/avatar3.jpg",
    "assets/images/avatar4.jpg",
    "assets/images/avatar5.jpg",
    "assets/images/avatar6.jpg",
    "assets/images/avatar7.jpg",
    "assets/images/avatar8.jpg",
    "assets/images/avatar9.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Edna Nevarez"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
