import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 4) {
      return 'fudeo';
    } else if (pontuacao < 6) {
      return 'ta ruim';
    } else if (pontuacao < 8) {
      return 'não ta bom';
    } else if (pontuacao < 12) {
      return 'ta bom';
    } else if (pontuacao < 17) {
      return 'pode ser melhor';
    } else if (pontuacao < 20) {
      return 'aceitavel';
    } else if (pontuacao < 25) {
      return 'top';
    } else if (pontuacao < 30) {
      return 'bagual';
    } else if (pontuacao < 100) {
      return 'ele mesmo!!!!';
    } else {
      return 'NÃO É POSSIVEL, É ELE SEM DUVIDA';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text('Reiniciar?',
          style:TextStyle(color: Colors.blue,
          fontSize: 28,),),

        )
      ],
    );
  }
}
