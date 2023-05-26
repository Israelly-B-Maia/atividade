import 'package:flutter/material.dart';  // Importa o pacote de material do Flutter

import '../../../constants.dart';  // Importa o arquivo de constantes

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;//

  @override
  Widget build(BuildContext context) {
    return Padding(  // Widget que adiciona preenchimento ao redor de seu filho
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),  // Define o preenchimento horizontal
      child: Row(  // Widget que organiza seus filhos em uma linha horizontal
        children: <Widget>[
          RichText(  // Widget que exibe um texto formatado com diferentes estilos
            text: TextSpan(  // Define o conteúdo do texto formatado
              children: [
                TextSpan(
                  text: "$title\n",  // Define um trecho de texto com o título, com quebra de linha
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),  // Define o estilo do texto
                ),
                TextSpan(
                  text: country,  // Define um trecho de texto com o país e personaliza o tamanho e a cor
                  style: TextStyle(
                    fontSize: 20,//personaliza o tamanho
                    color: kPrimaryColor,// personalizando a cor
                    fontWeight: FontWeight.w300,//personalizando a fonte
                  ),
                ),
              ],
            ),
          ),
          Spacer(),  // Widget flexível que se expande para preencher o espaço disponível
          Text(
            "\$$price",  // Exibe o preço formatado como texto
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),  // Define o estilo do texto
          )
        ],
      ),
    );
  }
}
