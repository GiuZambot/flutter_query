import 'package:flutter/material.dart';
import 'package:flutter_query/resposta_btn.dart';

import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['pergunta'].toString()),
        ...perguntas[perguntaSelecionada]
            .cast()['respostas']
            .map((e) => RespostaBtn(
                  e['texto'].toString(),
                  () => responder(int.parse(e['nota'].toString())),
                )),
      ],
    );
  }
}
