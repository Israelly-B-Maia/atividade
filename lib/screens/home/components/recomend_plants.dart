import 'package:flutter/material.dart'; // Importa o pacote de widgets do Flutter
import 'package:plant_app/screens/details/details_screen.dart'; // Importa o arquivo de tela de detalhes

import '../../../constants.dart'; // Importa o arquivo de constantes

class RecomendsPlants extends StatelessWidget { // Declaração da classe RecomendsPlants que estende StatelessWidget
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Sobrescreve o método build para construir a interface
    return SingleChildScrollView( // Retorna um widget SingleChildScrollView
      scrollDirection: Axis.horizontal, // Define a direção de rolagem como horizontal
      child: Row( // Widget Row para exibir uma linha de widgets
        children: <Widget>[
          RecomendPlantCard( // Chama o widget RecomendPlantCard
            image: "assets/images/image_1.png", // Define a imagem do cartão
            title: "Samantha", // Define o título do cartão
            country: "Russia", // Define o país do cartão
            price: 440, // Define o preço do cartão
            press: () { // Define a função de pressionar do cartão
              Navigator.push( // Navega para a tela de detalhes
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(), // Chama a tela de detalhes
                ),
              );
            },
          ),
          RecomendPlantCard( // Chama o widget RecomendPlantCard
            image: "assets/images/image_2.png", // Define a imagem do cartão
            title: "Angelica", // Define o título do cartão
            country: "Russia", // Define o país do cartão
            price: 440, // Define o preço do cartão
            press: () { // Define a função de pressionar do cartão
              Navigator.push( // Navega para a tela de detalhes
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(), // Chama a tela de detalhes
                ),
              );
            },
          ),
          RecomendPlantCard( // Chama o widget RecomendPlantCard
            image: "assets/images/image_3.png", // Define a imagem do cartão
            title: "Samantha", // Define o título do cartão
            country: "Russia", // Define o país do cartão
            price: 440, // Define o preço do cartão
            press: () {}, // Define a função de pressionar do cartão (vazia neste caso)
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget { // Declaração da classe RecomendPlantCard que estende StatelessWidget
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country; // Declaração das variáveis image, title e country
  final int price; // Declaração da variável price
  final Function press; // Declaração da função de pressionar

  @override
  Widget build(BuildContext context) { // Sobrescreve o método build para construir a interface
    Size size = MediaQuery.of(context).size; // Obtém o tamanho da tela
    return Container( // Retorna um widget Container
      margin: EdgeInsets.only(
        left: kDefaultPadding, // Define a margem esquerda
        top: kDefaultPadding / 2, // Define a margem superior
        bottom: kDefaultPadding * 2.5, // Define a margem inferior
      ),
      width: size.width * 0.4, // Define a largura do cartão
      child: Column( // Widget Column para exibir uma coluna de widgets
        children: <Widget>[
          Image.asset(image), // Exibe a imagem do cartão
          GestureDetector( // Widget GestureDetector para detectar gestos
            onTap: press, // Define a função de pressionar do GestureDetector
            child: Container( // Retorna um widget Container
              padding: EdgeInsets.all(kDefaultPadding / 2), // Define o preenchimento do contêiner
              decoration: BoxDecoration( // Define a decoração do contêiner
                color: Colors.white, // Define a cor de fundo
                borderRadius: BorderRadius.only( // Define bordas arredondadas
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [ // Adiciona uma sombra ao contêiner
                  BoxShadow(
                    offset: Offset(0, 10), // Define o deslocamento da sombra
                    blurRadius: 50, // Define o raio de desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.23), // Define a cor da sombra
                  ),
                ],
              ),
              child: Row( // Widget Row para exibir uma linha de widgets
                children: <Widget>[
                  RichText( // Widget RichText para exibir texto formatado
                    text: TextSpan( // Define o conteúdo do RichText
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(), // Define o título do cartão em maiúsculas
                            style: Theme.of(context).textTheme.button), // Define o estilo do texto do título
                        TextSpan(
                          text: "$country".toUpperCase(), // Define o país do cartão em maiúsculas
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5), // Define a cor do texto do país
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(), // Widget Spacer para preencher o espaço restante
                  Text(
                    '\$$price', // Exibe o preço do cartão
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor), // Define o estilo do texto do preço
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
