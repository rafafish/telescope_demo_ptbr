import 'package:shared_preferences/shared_preferences.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class Prefs {
  setNotUpdated() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("updated", '0');
  }

  setUpdated() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("updated", '1');
  }

  getUpdated() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    globals.isUpdated = preferences.getString("updated");
  }
}
