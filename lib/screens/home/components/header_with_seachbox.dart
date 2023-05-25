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
  // O método build é sobrescrito para construir a interface do usuário para esse widget. Ele recebe o parâmetro BuildContext context que é usado para acessar o contexto atual.
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
            // O Container possui um preenchimento interno definido pela propriedade padding, com espaços à esquerda e à direita definidos por kDefaultPadding e na parte inferior com 36 + kDefaultPadding.
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            // A propriedade height define a altura do container, subtraindo 27 para acomodar o espaço ocupado pelo texto e imagem do cabeçalho.
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              // O Container possui uma decoração com cor de fundo definida por kPrimaryColor (uma constante importada), e bordas arredondadas na parte inferior esquerda e inferior direita.
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
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
