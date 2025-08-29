import 'package:flutter/material.dart';
import '../modelos/usuario.dart';
import '../modelos/estoria.dart';
import 'package:cached_network_image/cached_network_image.dart'; // Para imagens com cache
import '../uteis/paleta_cores.dart';


class AreaStoria extends StatelessWidget {

    final Usuario usuario;
    final List<Estoria> estorias;

    const AreaStoria({
        Key? key,
        required this.usuario,
        required this.estorias,
        }) : super(key: key);


    @override
    Widget build(BuildContext context) {
        return Container(
            height: 200,
            color: Colors.white,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 1 + estorias.length, //1 + 8 = 9 itens
                itemBuilder: (context, indice) {

                    if( indice == 0 ){

                        Estoria estoriaUsuario = Estoria(
                            usuario: usuario,
                            urlImagem: usuario.urlImagem,
                        );

                        return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: CartaoEstoria(
                                adicionarEstoria: true,
                                estoria: estoriaUsuario,
                            ),
                        ); // padding

                    }

                    Estoria estoria = estorias[indice - 1];

                    return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: CartaoEstoria(
                            estoria: estoria,
                        ),
                    ); // padding
                }, //listview.builder
                
            ), // container
        );
    }
}

class CartaoEstoria extends StatelessWidget {

    final Estoria estoria;

    const CartaoEstoria({
        Key? key,
        required this.estoria,
        this.adicionarEstoria = false,
        }) : super(key: key);

    @override
    Widget build (BuildContext context) {
        return Stack(
            children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                        imageUrl: estoria.urlImagem,
                        height: double.infinity,
                        width: 110,
                        fit: BoxFit.cover,
                    ),
                ), //clipRRect
                Container(
                    height: double.infinity,
                    width: 110,
                    decoration: BoxDecoration(
                        gradient: PaletaCores.degradeEstoria,
                        borderRadius: BorderRadius.circular(12),
                        ), // BoxDecoration
                    ), // container 
            ] 
        );
    }
}