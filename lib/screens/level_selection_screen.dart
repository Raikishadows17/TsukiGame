import 'package:flutter/material.dart';

class LevelSelectionScreen extends StatelessWidget {
  final List<Map<String, String>> levels = [
    {'title': 'Colores', 'route': '/colors'},
    {'title': 'Números', 'route': '/numbers'},
    {'title': 'Letras', 'route': '/letters'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Selecciona un Nivel')),
      body: ListView.builder(
        itemCount: levels.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star, color: Colors.yellow),
            title: Text(levels[index]['title']!),
            trailing: Icon(Icons.arrow_forward, color: Colors.blue),
            onTap: () {
              Navigator.pushNamed(context, levels[index]['route']!);
            },
          );
        },
      ),
    );
  }
}
