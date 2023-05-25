//esse código define uma classe Body que constrói uma interface do usuário com uma imagem, título, preço e botões "Buy Now" e "Description".
// Essa classe pode ser usada como parte de uma tela ou componente em um aplicativo Flutter.
import 'package:flutter/material.dart';// importa o pacote necessário para utilizar os widgets e recursos do Flutter.
import 'package:plant_app/constants.dart';//importa o arquivo "constants.dart" que contém definições de constantes adicionais(cores e valores de estilo).

import 'image_and_icons.dart';// Importa o arquivo image_and_icons.dart
import 'title_and_price.dart';// Importa o arquivo title_and_price.dart


class Body extends StatelessWidget {//a Body é uma subclasse da super classe StatelessWidget
  @override
  Widget build(BuildContext context) {//O método build é sobrescrito para construir a interface do usuário da classe Body e ele recebe um parâmetro context, que é usado para acessar informações do contexto atual, como o tamanho da tela (Size) através do MediaQuery.of(context).size.
    Size size = MediaQuery.of(context).size;// Obtém o tamanho da tela atual
    return SingleChildScrollView(
      child: Column( // Cria uma coluna de widgets
        children: <Widget>[
          ImageAndIcons(size: size),// Adiciona o widget ImageAndIcons, passando o tamanho como parâmetro
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),// Adiciona o widget TitleAndPrice com valores específicos
          SizedBox(height: kDefaultPadding),// Adiciona um espaço vertical definido pela constante kDefaultPadding
          Row(  // Cria uma linha de widgets
            children: <Widget>[//organiza seus filhos em uma linha horizontal. 
              SizedBox(// largura igual à metade da largura da tela (size.width / 2) 
                width: size.width / 2,
                height: 84,//altura de 84 pixels
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),// Define as bordas arredondadas no canto superior direito
                    ),
                    ),
                  ),
                  // exibe um botão retangular com um texto "Buy Now". 
                  color: kPrimaryColor,// Define a cor de fundo como kPrimaryColor
                  onPressed: () {},// não há ação definida pois o onPressed está vazio
                  child: Text(
                    "Buy Now",
                    style: TextStyle(// define a cor e o tamanho do botão
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(//há outro botão que exibe um texto "Description"
                  onPressed: () {},// Define uma ação vazia ao ser pressionado
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
