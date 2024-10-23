import 'package:flutter/material.dart';

Color cor(String texto) {
  Color corTexto;

  if (texto == 'Amarelo') {
    corTexto = Color.fromARGB(255, 70, 3, 103);
  } else if (texto == 'Vermelho') {
    corTexto = Colors.yellow;
  } else if (texto == 'Azul') {
    corTexto = Color.fromARGB(255, 19, 106, 57);
  } else if (texto == 'Roxo') {
    corTexto = Color.fromARGB(255, 0, 0, 0);
  } else {
    corTexto = const Color.fromARGB(255, 149, 49, 49);
  }
  return corTexto;
}

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  Resposta(this.texto,this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: ElevatedButton(
          child: Text(
            texto,
            style: TextStyle(color: cor(texto))
          ),
          onPressed: quandoSelecionado,
        ),
    );
  }
}




/*
style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 42, 128, 118))
*/