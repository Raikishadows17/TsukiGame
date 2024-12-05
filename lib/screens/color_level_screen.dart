import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ColorLevelScreen extends StatefulWidget {
  @override
  _ColorLevelScreenState createState() => _ColorLevelScreenState();
}

class _ColorLevelScreenState extends State<ColorLevelScreen> {
  String question = '¿Dónde está el color rojo?';
  String correctAnswer = 'rojo';

  void playSound(String soundFile) async {
    final player = AudioPlayer();
    await player.setAsset('assets/sounds/Colores/$soundFile.wav');
    await player.play();
  }

  void checkAnswer(String selectedColor) {
    playSound(selectedColor); // Reproduce el sonido del color seleccionado

    if (selectedColor == correctAnswer) {
      setState(() {
        question = '¡Correcto! Ahora, ¿dónde está el color azul?';
        correctAnswer = 'azul';
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('¡Inténtalo de nuevo!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nivel de Colores')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => checkAnswer('rojo'),
                child:
                    Image.asset('assets/images/colores/rojo.jpg', width: 100),
              ),
              GestureDetector(
                onTap: () => checkAnswer('azul'),
                child:
                    Image.asset('assets/images/colores/azul.jpg', width: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
