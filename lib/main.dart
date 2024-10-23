import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 89, 168, 233),
          title: Container(
            alignment: Alignment.center,
            child: Text('Perguntas'),
          ),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            //possibilidades diferentes de passar a função
            Resposta("Azul"),
            Resposta("Vermelho"),
            Resposta("Amarelo"),
            Resposta("nhê"),
            Resposta("sei la"),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

/*
 Text(perguntas[0]),
            //possibilidades diferentes de passar a função
            ElevatedButton(
                onPressed: () => responder(), child: Text('Resposta 1')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 2')),
            ElevatedButton(
                onPressed: () {
                  print('Pergunta Respondida 3');
                },
                child: Text('Resposta 3')),
            ElevatedButton(
                onPressed: () => print('Pergunta Respodida 4'),
                child: Text('Resposta 4')),
            ElevatedButton(onPressed: responder, child: Text('Resposta 5')),
            */