import 'package:beba_agua/model/pessoa.dart';

sealed class StateCalcular {
  final Pessoa pessoa;
  StateCalcular({required this.pessoa});
}

final class StateInitial extends StateCalcular {
  StateInitial({required super.pessoa});
}

final class StateCalculado extends StateCalcular {
  StateCalculado({required super.pessoa});
}
