import 'package:beba_agua/pages/calcular_page/calcular_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InfosComponent extends ConsumerWidget {
  const InfosComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calc = ref.watch(calcularProvider);
    final info = calc.pessoa;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${info.ml}',
                  style: const TextStyle(fontSize: 24),
                ),
                Icon(
                  MdiIcons.fromString('alpha-m-box'),
                  size: 30,
                ),
                Icon(
                  MdiIcons.fromString('alpha-l-box-outline'),
                  size: 30,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${info.garrafa!.floor()}',
                  style: const TextStyle(fontSize: 24),
                ),
                Icon(
                  MdiIcons.fromString('bottle-soda'),
                  size: 30,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${info.copos!.floor()}',
                  style: const TextStyle(fontSize: 24),
                ),
                Icon(
                  MdiIcons.fromString('cup'),
                  size: 30,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
