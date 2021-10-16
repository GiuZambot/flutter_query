import 'package:flutter/material.dart';
import 'package:flutter_query/questionario.dart';
import 'package:flutter_query/resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntasStates extends State<PerguntaApp> {
  final List<Map<String, Object>> perguntas = [
    {
      'pergunta': 'Qual sua cor favorita.',
      'respostas': [
        {'texto': 'Azul', 'nota': 10},
        {'texto': 'Amarelo', 'nota': 5},
        {'texto': 'Roxo', 'nota': 3},
        {'texto': 'Preto', 'nota': 1},
      ]
    },
    {
      'pergunta': 'Qual o animal favorito.',
      'respostas': [
        {'texto': 'Cão', 'nota': 10},
        {'texto': 'Gato', 'nota': 5},
        {'texto': 'Rato', 'nota': 3},
        {'texto': 'Capivara', 'nota': 1},
      ]
    },
    {
      'pergunta': 'Qual sua comida favorita.',
      'respostas': [
        {'texto': 'Macarrão', 'nota': 10},
        {'texto': 'Lasanha', 'nota': 5},
        {'texto': 'Coxinha', 'nota': 3},
        {'texto': 'Pizza', 'nota': 1},
      ]
    },
  ];

  int perguntaSelecionada = 0;
  int notaFinal = 0;
  void responder(int nota) {
    setState(() {
      perguntaSelecionada++;
      notaFinal += nota;
    });
  }

  void reiniciarQuiz() {
    setState(() {
      perguntaSelecionada = 0;
      notaFinal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Perguntas')),
          ),
          body: perguntaSelecionada < perguntas.length
              ? Questionario(
                  perguntas: perguntas,
                  perguntaSelecionada: perguntaSelecionada,
                  responder: responder,
                )
              : Resposta(
                  notaFinal,
                  reiniciarQuiz,
                )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  PerguntasStates createState() {
    return PerguntasStates();
  }
}
