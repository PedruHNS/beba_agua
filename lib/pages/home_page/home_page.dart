import 'package:beba_agua/pages/home_page/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list = ref.watch(listPessoasProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('/detalhe', arguments: list.pessoas[index]);
            },
            child: ListTile(title: Text('${list.pessoas[index].nome}'))),
        itemCount: list.pessoas.length,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/calcular');
          },
          child: Icon(
            MdiIcons.fromString('plus'),
            size: 30,
          )),
    );
  }
}
