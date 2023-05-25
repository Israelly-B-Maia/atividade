import 'package:flutter/material.dart';// Importa o pacote de material do Flutter
import 'package:flutter_svg/flutter_svg.dart';// Importa o pacote flutter_svg, é o pacote para trabalhar com imagens SVG

import '../../../constants.dart';// Importa o arquivo de constantes
import 'icon_card.dart';//importa o arquivo com o cartão personalizado

class ImageAndIcons extends StatelessWidget {//A classe IconCard herda de StatelessWidget, o widget é imutável e não mantém estado próprio.
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {//O método build é sobrescrito para construir a interface do usuário da classe ImageAndIcons.
    return Padding( // Widget que adiciona preenchimento ao redor de seu filho
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),// Define o preenchimento apenas na parte inferior
      child: SizedBox(
        height: size.height * 0.8,// Define a altura como 80 da altura fornecida
        child: Row(// Widget que organiza seus filhos em uma linha horizontal
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),// Define o preenchimento vertical
                child: Column( // Widget que organiza seus filhos em uma coluna vertical
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),// Define o preenchimento horizontal
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"), // Exibe uma imagem SVG
                        onPressed: () {
                          Navigator.pop(context);// Ação ao ser pressionado, retorna à tela anterior
                        },
                      ),
                    ),
                    Spacer(),// Widget flexível que se expande para preencher o espaço disponível
                    IconCard(icon: "assets/icons/sun.svg"),// Exibe um ícone personalizado
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(// Widget que define um contêiner retangular
              height: size.height * 0.8, // Define a altura como 80% da altura fornecida
              width: size.width * 0.75,// Define a largura como 75% da largura fornecida
              decoration: BoxDecoration(// Define a aparência do contêiner
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),// Define bordas arredondadas no canto superior esquerdo
                  bottomLeft: Radius.circular(63),// Define bordas arredondadas no canto inferior esquerdo
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),// Define o deslocamento da sombra
                    blurRadius: 60,// Define o desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.29), // Define a cor da sombra com transparência
                  ),
                ],
                image: DecorationImage(// Define uma imagem de fundo
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"), // Exibe uma imagem a partir de um arquivo
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
