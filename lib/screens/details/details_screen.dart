//Este código é um exemplo de uma classe DetailsScreen que representa a tela de detalhes.
import 'package:flutter/material.dart';// importa o pacote necessário para utilizar os widgets e recursos do Flutter.
import 'package:plant_app/screens/details/components/body.dart';//importa o arquivo"body.dart" que contém a implementação do corpo da tela de detalhes.

class DetailsScreen extends StatelessWidget {//essa classe é definida como uma classe de widget "Stateless". Ela estende a classe StatelessWidget, que é fornecida pelo Flutter.
  @override
  Widget build(BuildContext context) {//esse método é sobrescrito para construir a interface de usuário do widget e esse metodo recebe um parâmetro BuildContext que fornece acesso ao contexto do widget.
    return Scaffold(//estrutura básica para a tela
      body: Body(),
    );
  }
}
