import 'package:flutter/material.dart';//essas duas primeiras linhas importam os pacotes necessários para utilizar os widgets do Flutter e para exibir imagens SVG.
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';//importa o arquivo "constants.dart" que contém definições de constantes adicionais(cores e valores de estilo).

class MyBottomNavBar extends StatelessWidget {//Essa classe é definida como uma classe de widget "Stateless". Ela estende a classe StatelessWidget, que é fornecida pelo Flutter.
  const MyBottomNavBar({//Esse construtor é definido, recebendo um parâmetro Key opcional. Esse construtor chama o construtor da superclasse StatelessWidget passando a chave recebida.
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {O método build é sobrescrito para construir a interface de usuário do widget. O método build recebe um parâmetro BuildContext que fornece acesso ao contexto do widget.
    return Container(// envolve toda a barra de navegação. 
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,//linha 15 e 16 especifica a quantidade de preenchimento em cada direção.
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,//A altura do Container é definida como 80 pixels.
      decoration: BoxDecoration(// é definida para aplicar uma aparência visual à barra de navegação. 
        color: Colors.white,//definiram uma cor branca
        boxShadow: [
          BoxShadow(//uma cor para o fundo?
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(//contém linha de botões de ícone.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//para organizar os botões
        children: <Widget>[
          IconButton(//criação de um botão
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton(//criação de um botão
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton(//criação de um botão
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
