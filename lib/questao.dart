import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String textoQuestao;
  const Questao(this.textoQuestao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      child: Text(
        textoQuestao,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
