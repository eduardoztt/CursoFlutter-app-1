import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Amarelo', 'pontuacao': 10},
        {'texto': 'Azul', 'pontuacao': 5},
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Roxo', 'pontuacao':3},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Eguá', 'pontuacao': 5},
        {'texto': 'Camelo', 'pontuacao': 5},
        {'texto': 'Tatu Bola', 'pontuacao': 3},
        {'texto': 'Farfus', 'pontuacao': 100},
        {'texto': 'gato', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual o melhor Veiculo',
      'respostas': [
        {'texto': 'fusca', 'pontuacao': 3},
        {'texto': 'boing', 'pontuacao': 5},
        {'texto': 'Titanic', 'pontuacao': 1},
        {'texto': 'bicikreta', 'pontuacao': 3},
        {'texto': 'camelo', 'pontuacao': 10},
      
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPeguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
                  quandoResponder: _responder)
              : Resultado(_pontuacaoTotal,_reiniciarQuestionario)),
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