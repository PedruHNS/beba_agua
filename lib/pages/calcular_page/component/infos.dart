import 'package:beba_agua/pages/calcular_page/component/card_custom.dart';
import 'package:beba_agua/pages/calcular_page/providers/calcular_provider.dart';

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
        CardCustom(
          value: '${info.ml} ML',
        ),
        CardCustom(
          icons: MdiIcons.bottleSoda,
          value: '${info.garrafa!.floor()}',
        ),
        CardCustom(
          icons: MdiIcons.cup,
          value: '${info.copos!.floor()}',
        ),
      ],
    );
  }
}
