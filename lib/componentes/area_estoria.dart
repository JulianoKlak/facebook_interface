import 'package:flutter/material.dart';
import '../modelos/usuario.dart';
import '../modelos/estoria.dart';
import 'package:cached_network_image/cached_network_image.dart'; // Para imagens com cache


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
            color: Colors.orange,
            child: ListView.builder(
                itemCount: estorias.length,
                itemBuilder: (context, indice) {

                    Estoria estoria = estorias[indice];

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
        required this.estoria
        }) : super(key: key);

    @override
    Widget build (BuildContext context) {
        return Stack(
            children: [
                ClipRRect(
                    child: CachedNetworkImage(
                        imageUrl: estoria.urlImagem,
                        height: double.infinity,
                        width: 110,
                        fit: BoxFit.cover,
                    ),
                ),
            ]
        );
    }
}