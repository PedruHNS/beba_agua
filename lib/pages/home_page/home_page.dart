import 'package:beba_agua/pages/home_page/component/list_view_custom.dart';
import 'package:beba_agua/pages/home_page/providers/list_provider.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListViewCustom(pessoas: list.pessoas),
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
