library iskelet_sharedprefs;

import 'package:shared_preferences/shared_preferences.dart';

 
class SrSharedPreferences {
  static final _instance = SrSharedPreferences._();
  SrSharedPreferences._();

  static SrSharedPreferences get instance => _instance;

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  Future<bool> remove(String key) async {
    final pref = await _pref;
    if (pref.containsKey(key)) {
      return await pref.remove(key);
    } else {
      return true;
    }
  }

  Future<bool?> getBool(String key) async {
    final pref = await _pref;
    return pref.getBool(key);
  }

  Future<bool> setBool(String key, bool value) async {
    final pref = await _pref;
    return await pref.setBool(key, value);
  }

  Future<String?> getString(String key) async {
    final pref = await _pref;
    return pref.getString(key);
  }

  Future<bool> setString(String key, String value) async {
    final pref = await _pref;
    return await pref.setString(key, value);
  }

  Future<int?> getInt(String key) async {
    final pref = await _pref;
    return pref.getInt(key);
  }

  Future<bool> setInt(String key, int value) async {
    final pref = await _pref;
    return await pref.setInt(key, value);
  }

  Future<double?> getDouble(String key) async {
    final pref = await _pref;
    return pref.getDouble(key);
  }

  Future<bool> setDouble(String key, double value) async {
    final pref = await _pref;
    return await pref.setDouble(key, value);
  }

  Future<List<String>> getStringList(String key) async {
    final pref = await _pref;
    var rtn = pref.getStringList(key);
    return rtn ?? [];
  }

  Future<bool> setStringList(String key, List<String> value) async {
    final pref = await _pref;
    return await pref.setStringList(key,  value);
  }

 
}
