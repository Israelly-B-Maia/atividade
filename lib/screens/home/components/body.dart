import 'package:flutter/material.dart';  // Importa o pacote de material do Flutter
import 'package:plant_app/constants.dart';  // Importa o arquivo de constantes
//construção da interface do usuário.
import 'featurred_plants.dart';//Está importando o arquivo featurred_plants.dart 
import 'header_with_seachbox.dart';// Está importando o arquivo header_with_seachbox.dart, 
import 'recomend_plants.dart';//Está importando o arquivo recomend_plants.dart
import 'title_with_more_bbtn.dart';//Está importando o arquivo title_with_more_bbtn.dart

class Body extends StatelessWidget {//a Body é uma subclasse da super classe StatelessWidget
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;  // Obtém a altura e largura total da tela

    // it enable scrolling on small device
    return SingleChildScrollView(  // Widget que permite a rolagem em dispositivos pequenos
      child: Column(  // Widget que organiza seus filhos em uma coluna vertical
        crossAxisAlignment: CrossAxisAlignment.start,  // Alinha os filhos à esquerda
        children: <Widget>[//
          HeaderWithSearchBox(size: size),  // Widget de cabeçalho com caixa de pesquisa
          TitleWithMoreBtn(title: "Recomended", press: () {}),  // Widget de título com botão "More"
          RecomendsPlants(),  // Widget de plantas recomendadas
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),  // Widget de título com botão "More"
          FeaturedPlants(),  // Widget de plantas em destaque
          SizedBox(height: kDefaultPadding),  // Espaço vazio com altura padrão
        ],
      ),
    );
  }
}
