import 'package:flutter/material.dart';  // Importa o pacote de material do Flutter
import 'package:flutter_svg/svg.dart';  // Importa o pacote flutter_svg
import 'package:plant_app/components/my_bottom_nav_bar.dart';  // Importa o componente MyBottomNavBar
import 'package:plant_app/screens/home/components/body.dart';  // Importa o componente Body

class HomeScreen extends StatelessWidget {//Essa classe é definida como uma classe de widget "HomeScreen". Ela estende a classe StatelessWidget, que é fornecida pelo Flutter.
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Define a estrutura básica da tela
      appBar: buildAppBar(),  // Define a barra de aplicativo
      body: Body(),  // Define o corpo da tela
      bottomNavigationBar: MyBottomNavBar(),  // Define a barra de navegação inferior
    );
  }

  AppBar buildAppBar() {  // Método para construir a barra de aplicativo
    return AppBar(
      elevation: 0,  // Remove a sombra da barra de aplicativo
      leading: IconButton(  // Define o ícone à esquerda da barra de aplicativo
        icon: SvgPicture.asset("assets/icons/menu.svg"),  // Exibe uma imagem SVG como ícone
        onPressed: () {},  // Ação ao ser pressionado (não definida neste exemplo)
      ),
    );
  }
}
