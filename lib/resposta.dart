import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final int notaFinal;
  final void Function() reiniciar;
  Resposta(this.notaFinal, this.reiniciar, {Key? key}) : super(key: key);

  String get fraseFinal {
    if (notaFinal > 20) return 'Parabéns';
    return 'Melhore';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '$fraseFinal você conseguiu ${notaFinal.toString()} pontos.',
          style: const TextStyle(fontSize: 28),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xF00D47A1),
                        Color(0xF01976D2),
                        Color(0xF042A5F5),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: reiniciar,
                child: const Text('Reiniciar'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
