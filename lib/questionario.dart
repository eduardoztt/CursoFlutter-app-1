import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

Questionario({
  required this.perguntaSelecionada,
  required this.perguntas,
  required this.responder,
});


bool get temPeguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
 List<Map<String, Object>> respostas = temPeguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    List<Widget> widgets =
        respostas.map((resp) => Resposta(resp['texto'] as String, responder)).toList();

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...widgets,
      ],
    );
  }
}
