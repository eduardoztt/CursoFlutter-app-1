import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {

Color corTexto;
if (texto == 'Amarelo') {
      corTexto = Color.fromARGB(255, 70, 3, 103);
    } else 
      if (texto == 'Vermelho') {
        corTexto = Colors.yellow; 
      } else 
        if(texto == 'Azul'){
          corTexto = Color.fromARGB(255, 19, 106, 57);
        }else
          if(texto == 'nhê'){
            corTexto = Color.fromARGB(255, 162, 197, 111);
        }else{
      corTexto = Colors.grey; 
        }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: ElevatedButton(
          onPressed: null,
          child: Text(
            texto,
            style: TextStyle(
              color:corTexto
              ),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 42, 128, 118))),
    );
  }
}
