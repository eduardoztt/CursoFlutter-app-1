import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Amarelo', 'nota': '10'},
        {'texto': 'Azul', 'nota': '5'},
        {'texto': 'Vermelho', 'nota': '10'},
        {'texto': 'Preto', 'nota': '5'},
        {'texto': 'Roxo', 'nota': '3'},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Eguá', 'nota': '5'},
        {'texto': 'Camelo', 'nota': '5'},
        {'texto': 'Tatu Bola', 'nota': '3'},
        {'texto': 'Farfus', 'nota': '10'},
        {'texto': 'gato', 'nota': '3'},
      ],
    },
    {
      'texto': 'Qual o melhor Veiculo',
      'respostas': [
        {'texto': 'fusca', 'nota': '3'},
        {'texto': 'boing', 'nota': '5'},
        {'texto': 'Titanic', 'nota': '1'},
        {'texto': 'bicikreta', 'nota': '3'},
        {'texto': 'camelo', 'nota': '10'},
      
      ],
    }
  ];

  void _responder() {
    if (temPeguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPeguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //for (var textoResp in respostas) {
    //  print(textoResp);
    //  widgets.add(Resposta(textoResp, _responder));
    //}

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 89, 168, 233),
            title: Container(
              alignment: Alignment.center,
              child: Text('Perguntas'),
            ),
          ),
          body: temPeguntaSelecionada
              ? Questionario(
                  perguntaSelecionada: _perguntaSelecionada,
                  perguntas: _perguntas,
                  responder: _responder)
              : Resultado()),
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