//esse código define um widget IconCard que exibe um ícone em um cartão com uma aparência personalizada, incluindo sombras, cor de fundo e formato arredondado.
// O ícone é carregado a partir de um arquivo SVG especificado pelo parâmetro icon.
import 'package:flutter/material.dart';// Importa o pacote de material do Flutter
import 'package:flutter_svg/flutter_svg.dart'; // Importa o pacote flutter_svg

import '../../../constants.dart';// Importa um arquivo de constantes

class IconCard extends StatelessWidget {//A classe IconCard herda de StatelessWidget, o widget é imutável e não mantém estado próprio.
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {//esse é um metodo sobrescrito para construir a interface do usuário da classe IconCard. 
    Size size = MediaQuery.of(context).size;//parametro para receber o tamanho da tela atual
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03), // Define uma margem vertical com base na altura da tela
      padding: EdgeInsets.all(kDefaultPadding / 2),// Define um preenchimento interno com base em uma constante
      height: 62,// Define uma altura fixa para o container
      width: 62,// Define uma largura fixa para o container
      decoration: BoxDecoration(
        color: kBackgroundColor,// Define a cor de fundo como uma constante
        borderRadius: BorderRadius.circular(6), // Define um raio de borda arredondado
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),// Define um deslocamento para a sombra
            blurRadius: 22,// Define um raio de desfoque para a sombra
            color: kPrimaryColor.withOpacity(0.22),// Define a cor da sombra com base em uma constante
          ),
          BoxShadow(
            offset: Offset(-15, -15),// Define um deslocamento para a sombra
            blurRadius: 20,// Define um raio de desfoque para a sombra
            color: Colors.white,//Define a cor da sombra como branco
          ),
        ],
      ),
      child: SvgPicture.asset(icon),// Exibe um ícone SVG usando o arquivo especificado pelo parâmetro 'icon'
    );
  }
}
