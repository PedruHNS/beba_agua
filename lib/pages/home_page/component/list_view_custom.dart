import 'package:beba_agua/model/pessoa.dart';
import 'package:beba_agua/pages/calcular_page/component/card_custom.dart';
import 'package:beba_agua/pages/home_page/component/card_custom.dart';
import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  final List<Pessoa> pessoas;

  const ListViewCustom({super.key, required this.pessoas});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CardPessoaCustom(
        pessoa: pessoas[index],
      ),
      itemCount: pessoas.length,
    );
  }
}
