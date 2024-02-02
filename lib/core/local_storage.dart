import 'package:beba_agua/model/pessoa.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dataBaseProvider = Provider<ILocalStorage>((ref) => LocalStorage());

abstract class ILocalStorage {
  Future<void> save(String key, String value);
  Future<List<Pessoa>> load();
  Future<void> delete(String key);
}

class LocalStorage implements ILocalStorage {
  @override
  Future<List<Pessoa>> load() async {
    final sp = await SharedPreferences.getInstance();
    final keys = sp.getKeys();

    final listPessoa = keys
        .map((key) => sp.getString(key))
        .where((element) => element != null)
        .cast<String>()
        .map<Pessoa>((e) => Pessoa.fromJson(e))
        .toList();

    return listPessoa;
  }

  @override
  Future<void> delete(String key) async {
    final sp = await SharedPreferences.getInstance();
    sp.remove(key);
  }

  @override
  Future<void> save(String key, String value) async {
    final sp = await SharedPreferences.getInstance();

    sp.setString(key, value);
  }
}
