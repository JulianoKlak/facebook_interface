import 'package:flutter/material.dart';
import '../uteis/paleta_cores.dart'; // importa a paleta de cores
import 'package:line_icons/line_icons.dart'; // importa os ícones
import '../componentes/botao_circulo.dart'; // importa o botão circular
import '../componentes/area_criar_postagem.dart'; // importa a área de criação de postagem
import '../modelos/usuario.dart'; // importa o modelo de usuário
import '../dados/dados.dart'; // importa os dados, incluindo o usuário atual
import '../modelos/estoria.dart'; // importa o modelo de estoria
import '../componentes/area_estoria.dart'; // importa a área de estoria

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
                // expandedHeight: 250,
                floating: true,
                centerTitle: false,
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
              child: AreaCriarPostagem(
                usuario: usuarioAtual,
              ) //areacriarpostagem
            ), // slivertoboxadapter
            SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: AreaStoria(
                  usuario: usuarioAtual,
                  estorias: estorias,
                ),
              )
            ), // SliverPadding
            SliverToBoxAdapter(
              child: Container(
                height: 1600,
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