import 'package:flutter/material.dart'; //importa o pacote material.dart do Flutter, que contém os widgets e as classes necessárias para criar interfaces de usuário no estilo Material Design.
import 'package:plant_app/constants.dart'; // essa linha importa um arquivo chamado constants.dart do pacote plant_app que possui constantes e configurações utilizadas em várias partes do aplicativo.
import 'package:plant_app/screens/home/home_screen.dart'; // essa linha importa um arquivo chamado home_screen.dart do pacote plant_app/screens/home. Esse arquivo possui a tela inicial do aplicativo.

void main() { //função principal do aplicativo
  runApp(MyApp()); // essa linha chama a função runApp para iniciar o aplicativo Flutter, passando uma instância da classe MyApp como parâmetro.
}

class MyApp extends StatelessWidget { //aqui começa a definição da classe MyApp, que é um widget que representa o início da aplicação.
  // This widget is the root of your application.
  @override // indica que o método abaixo está sendo sobrescrito  da classe mãe.
  Widget build(BuildContext context) { // esse é o método build da classe MyApp, que é chamado pelo framework Flutter para construir os widgets do aplicativo.
    return MaterialApp( // essee é o retorno do método build. È criada uma instância de MaterialApp, que é um widget fornecido pelo Flutter para configurar a aparência e o comportamento geral do aplicativo.
      debugShowCheckedModeBanner: false, // configura a exibição do banner de depuração no canto superior direito do aplicativo para false. O banner não será exibido durante o desenvolvimento.
      title: 'Plant App', // define o título do aplicativo.
      theme: ThemeData( // define o tema do aplicativo, especificando várias propriedades visuais e de estilo.
        scaffoldBackgroundColor: kBackgroundColor, // a cor de fundo do aplicativo é definida como kBackgroundColor
        primaryColor: kPrimaryColor,//
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor), // o estilo do texto do aplicativo é definido com base no tema atual do contexto. 
        visualDensity: VisualDensity.adaptivePlatformDensity, //define a densidade visual do aplicativo como uma densidade adaptativa de plataforma.
      ),
      home: HomeScreen(), // define a tela inicial do aplicativo como uma instância de HomeScreen
    );
  }
}