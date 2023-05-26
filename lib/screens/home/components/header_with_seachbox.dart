// Importa os pacotes necessários para utilizar as classes e recursos utilizados no código.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
// Declaração da classe HeaderWithSearchBox que herda de StatelessWidget. Representa o cabeçalho da tela com uma caixa de pesquisa.
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({// O construtor const HeaderWithSearchBox({ ... }) é declarado. Ele recebe um parâmetro obrigatório chamado size do tipo Size, que é o tamanho da tela.
    Key key,
    // declara uma variável final chamada size para armazenar o tamanho recebido no construtor.
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  // O método build é sobrescrito para construir a interface do usuário para esse widget.
  // Ele recebe o parâmetro BuildContext context que é usado para acessar o contexto atual.
  Widget build(BuildContext context) {
    // é criado um widget Container que representa o cabeçalho com a caixa de pesquisa.
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),// A propriedade margin define a margem inferior do container.
      // It will cover 20% of our total height
      height: size.height * 0.2,// A propriedade height define a altura do container como 20% da altura total da tela, utilizando o valor do tamanho recebido no construtor.
     // O Container possui um widget Stack como filho, que permite empilhar os widgets filhos em camadas.
      child: Stack(
        // Dentro do Stack, é adicionado um Container que representa a parte superior do cabeçalho.
        children: <Widget>[
          Container(
            // O Container possui um preenchimento interno definido pela propriedade padding,
            // com espaços à esquerda e à direita definidos por kDefaultPadding e na parte inferior com 36 + kDefaultPadding.
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            // A propriedade height define a altura do container, subtraindo 27 para acomodar o espaço ocupado pelo texto e imagem do cabeçalho.
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              // O Container possui uma decoração com cor de fundo definida por kPrimaryColor (uma constante importada),e bordas arredondadas na parte inferior esquerda e inferior direita.
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(// O Container possui um widget Row como filho, que contém um texto "Hi Uishopy!" e uma imagem.
              children: <Widget>[
                Text(
                  'Hi Uishopy!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")//a imagem
              ],
            ),
          ),
          Positioned(//posiciona um container na parte inferior da tela
            bottom: 0,//definiição para os valores
            left: 0,//posiciona na esquerda
            right: 0,//na direita
            child: Container(//para criar uma tela de pesquisa personalisada
              alignment: Alignment.center,//centralizar o alinhamento
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),//personaliza a mergem
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),//o preenchimento
              height: 54,//ele define a autura q ele quer
              decoration: BoxDecoration(
                color: Colors.white,//a cor q será usada
                borderRadius: BorderRadius.circular(20),//outra borda circular
                boxShadow: [
                  BoxShadow(// Adiciona uma sombra ao Container
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),// cor navamente
                  ),
                ],
              ),
              child: Row(// Widget Row permite organizar os filhos em uma linha horizontal
                children: <Widget>[
                  Expanded(// Widget Expanded permite que o filho preencha todo o espaço disponível
                    child: TextField(// Widget TextField é usado para entrada de texto
                      onChanged: (value) {},// Define uma função de retorno de chamada que será chamada quando o texto for alterado
                      decoration: InputDecoration(
                        hintText: "Search",// Define um texto de dica para a entrada de texto
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),// Define a cor da dica com base em uma cor primária com opacidade reduzida
                        ),
                        enabledBorder: InputBorder.none, // Remove a borda quando o TextField não está focado
                        focusedBorder: InputBorder.none,// Remove a borda quando o TextField está focado
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),// Define um ícone 
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),// Define um ícone
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
