import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter
import '../../../constants.dart'; // Importa o arquivo de constantes

class TitleWithMoreBtn extends StatelessWidget { // Declaração da classe TitleWithMoreBtn que estende StatelessWidget
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title; // Declaração da variável title
  final Function press; // Declaração da função de pressionar

  @override
  Widget build(BuildContext context) { // Sobrescreve o método build para construir a interface
    return Padding( // Retorna um widget Padding
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), // Define o preenchimento horizontal
      child: Row( // Widget Row para exibir uma linha de widgets
        children: <Widget>[
          TitleWithCustomUnderline(text: title), // Chama o widget TitleWithCustomUnderline
          Spacer(), // Widget Spacer para preencher o espaço restante
          FlatButton( // Widget FlatButton para exibir um botão plano
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Define o raio de borda do botão
            ),
            color: kPrimaryColor, // Define a cor de fundo do botão
            onPressed: press, // Define a função de pressionar do botão
            child: Text(
              "More", // Define o texto do botão
              style: TextStyle(color: Colors.white), // Define o estilo do texto do botão
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget { // Declaração da classe TitleWithCustomUnderline que estende StatelessWidget
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text; // Declaração da variável text

  @override
  Widget build(BuildContext context) { // Sobrescreve o método build para construir a interface
    return Container( // Retorna um widget Container
      height: 24, // Define a altura do contêiner
      child: Stack( // Widget Stack para empilhar widgets
        children: <Widget>[
          Padding( // Widget Padding para adicionar espaçamento interno
            padding: const EdgeInsets.only(left: kDefaultPadding / 4), // Define o espaçamento à esquerda
            child: Text(
              text, // Exibe o texto do título
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Define o estilo do texto do título
            ),
          ),
          Positioned(// Widget Positioned para posicionar o contêiner de sublinhado
            bottom: 0, // Posiciona o contêiner na parte inferior
            left: 0, // Posiciona o contêiner à esquerda
            right: 0, // Posiciona o contêiner à direita
            child: Container( // Retorna um widget Container
              margin: EdgeInsets.only(right: kDefaultPadding / 4), // Define a margem à direita
              height: 7, // Define a altura do contêiner de sublinhado
              color: kPrimaryColor.withOpacity(0.2), // Define a cor do contêiner de sublinhado
            ),
          )
        ],
      ),
    );
  }
}
