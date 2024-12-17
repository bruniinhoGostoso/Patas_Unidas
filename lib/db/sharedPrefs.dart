
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static const String _keyUser = 'manterConectado';

  Future<void> setUser(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyUser, value);
  }

  /// Obtém o status do usuário (conectado ou não), retorna `false` por padrão
  Future<bool> getUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyUser) ?? false;
  }///

  Future<void> clearUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUser);
  }

  Future<bool> carregarPreferenciaManterConectado() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool('manterConectado') ?? false;

  }
}
