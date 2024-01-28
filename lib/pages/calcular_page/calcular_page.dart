import 'package:beba_agua/pages/calcular_page/component/infos.dart';
import 'package:beba_agua/pages/calcular_page/component/input.dart';
import 'package:beba_agua/pages/calcular_page/providers/calcular_provider.dart';
import 'package:beba_agua/pages/home_page/providers/list_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalcularPage extends ConsumerStatefulWidget {
  const CalcularPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CalcularPageState();
}

class _CalcularPageState extends ConsumerState<CalcularPage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerPeso = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controllerNome.dispose();
    _controllerPeso.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('CALCULE'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Input(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'campo obrigatorio';
                    }
                    return null;
                  },
                  controller: _controllerNome,
                  label: 'Nome',
                  keyboard: TextInputType.text,
                ),
                Input(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'campo obrigatorio';
                    } else if (value.contains(',')) {
                      return 'use ponto';
                    } else if (double.parse(value) < 0) {
                      return 'valor invalido';
                    } else if (double.parse(value) > 500) {
                      return 'valor invalido';
                    } else if (double.tryParse(value) == null) {
                      return 'Peso inválido';
                    }
                    return null;
                  },
                  controller: _controllerPeso,
                  label: 'Peso (Kg)',
                  keyboard: TextInputType.number,
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        ref.read(calcularProvider.notifier).calcular(
                              peso: double.parse(_controllerPeso.text),
                              nome: _controllerNome.text,
                            );
                        final state = ref.watch(calcularProvider);
                        ref
                            .read(listPessoasProvider.notifier)
                            .add(state.pessoa);
                        _controllerNome.clear();
                        _controllerPeso.clear();
                      }
                    },
                    child: const Text('calcular'),
                  ),
                ),
                const InfosComponent()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
