import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
final int pontuacao;

 Resultado(this.pontuacao);

 String get fraseResultado {
  if(pontuacao < 4){
      return 'fudeo';
  } else if(pontuacao < 6){
      return 'ta ruim';
  }else if(pontuacao < 8){
      return 'não ta bom';
  }else if(pontuacao < 12){
      return 'ta bom';
  }else if(pontuacao < 17){
      return 'pode ser melhor';
  }else if(pontuacao < 20){
      return 'aceitavel';
  }else if(pontuacao < 25){
      return 'top';
  }else if(pontuacao < 30){
      return 'bagual';
  }else if(pontuacao < 100){
      return 'ele mesmo!!!!';
  }else {
      return 'FARFUSSSSSSSSSSS';
  }
 }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
       fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
