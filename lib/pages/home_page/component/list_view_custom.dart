import 'package:beba_agua/model/pessoa.dart';

import 'package:beba_agua/pages/home_page/component/card_custom.dart';
import 'package:beba_agua/pages/home_page/providers/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewCustom extends ConsumerWidget {
  final List<Pessoa> pessoas;
  const ListViewCustom({required this.pessoas, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemBuilder: (context, index) => Dismissible(
        key: Key('${pessoas[index].id}'),
        onDismissed: (direction) {
          ref.read(listPessoasProvider.notifier).delete(pessoas[index].id!);
        },
        child: CardPessoaCustom(
          pessoa: pessoas[index],
        ),
      ),
      itemCount: pessoas.length,
    );
  }
}
