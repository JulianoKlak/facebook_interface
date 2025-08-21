import 'package:flutter/material.dart';
import '../uteis/paleta_cores.dart'; // importa a paleta de cores
import 'package:line_icons/line_icons.dart'; // importa os ícones
import '../componentes/botao_circulo.dart'; // importa o botão circular

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

@override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 250,
                title: const Text(
                    'facebook',
                    style: TextStyle(
                        color: PaletaCores.azulFacebook,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: -1.2
                    ), //textStyle
                ), // text 
                actions: [
                    BotaoCirculo(
                        icone: Icons.search,
                        iconeTamanho: 30,
                        onPressed: () {}
                    ),
                    BotaoCirculo(
                        icone: LineIcons.facebookMessenger,
                        iconeTamanho: 30,
                        onPressed: () {}
                    )
                ],

            ),
            SliverToBoxAdapter(
              child: Container(
                height: 600,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Conteúdo do SliverToBoxAdapter',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ), // text
                ), // center
              ), // container
            ), // sliverToBoxAdapter
          ],
        )
    );
  }
}