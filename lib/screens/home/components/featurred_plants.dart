import 'package:flutter/material.dart';  // Importa o pacote de material do Flutter

import '../../../constants.dart';  // Importa o arquivo de constantes

class FeaturedPlants extends StatelessWidget {//a FeaturedPlants é uma subclasse da super classe StatelessWidget
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {// um método obrigatório pq já vi ele em todo lugar, então só pode ser obrigatório
    return SingleChildScrollView(  // Widget que permite a rolagem horizontal
      scrollDirection: Axis.horizontal,  // Define a direção da rolagem como horizontal
      child: Row(  // Widget que organiza seus filhos em uma linha horizontal
        children: <Widget>[
          FeaturePlantCard(  // Widget que representa um cartão de planta em destaque
            image: "assets/images/bottom_img_1.png",  // Define a imagem do cartão
            press: () {},  // Define a função a ser executada quando o cartão for pressionado
          ),
          FeaturePlantCard(  // Widget que representa um cartão de planta em destaque
            image: "assets/images/bottom_img_2.png",  // Define a imagem do cartão
            press: () {},  // Define a função a ser executada quando o cartão for pressionado
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {//define a classe chamada FeaturePlantCard que herda de StatelessWidget
  const FeaturePlantCard({
    Key key,
    this.image,// Um parâmetro nomeado que representa a imagem do cartão.
    this.press,//Um parâmetro nomeado que representa a função a ser executada quando o cartão for pressionado.
  }) : super(key: key);//chama o construtor da classe StatelessWidget e passa a chave key como parâmetro.
  final String image;  // Define a imagem do cartão
  final Function press;  // Define a função a ser executada quando o cartão for pressionado

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;  // Obtém a altura e largura total da tela
    return GestureDetector(  // Widget que detecta gestos do usuário
      onTap: press,  // Define a função a ser executada quando o cartão for pressionado
      child: Container(  // Widget de container
        margin: EdgeInsets.only(  // Define as margens do container
          left: kDefaultPadding,//para a esquer
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,  // Define a largura do container como 80% da largura total da tela
        height: 185,  // Define a altura do container
        decoration: BoxDecoration(  // Define a decoração do container
          borderRadius: BorderRadius.circular(10),  // Define a borda do container com borda arredondada
          image: DecorationImage(  // Define a imagem de fundo do container
            fit: BoxFit.cover,  // Define o modo de ajuste da imagem (cobrir todo o espaço disponível)
            image: AssetImage(image),  // Define a imagem a ser exibida no container
          ),
        ),
      ),
    );
  }
}
