import 'package:flutter/material.dart';

class Notesprovider with ChangeNotifier {
  List<String> _Titles = [];
  List<String> _Description = [];
  TextEditingController title_control = TextEditingController();
  TextEditingController Description_control = TextEditingController();
  List<String> get title => _Titles;
  List<String> get description => _Description;

  void Addnote() {
    _Titles.add(title_control.text);
    _Description.add(Description_control.text);
    notifyListeners();
  }

  void delteNote(int index) {
    _Titles.removeAt(index);
    _Description.removeAt(index);
    notifyListeners();
  }

  void editNote(int index, String S, String Des) {
    _Titles.insert(index, S);
    _Description.insert(index, Des);
    notifyListeners();
  }
}
