import 'package:flutter/material.dart';
import 'package:side_menu/src/widgets/lista_music.dart';

class LayoutModel with ChangeNotifier{
  Widget _currentList = ListaMusic();
  Color _colorItem = Color(0xff90324D); 
  String _currentTitle = 'Music';

  set currentList(Widget lista){
    this._currentList = lista;
    notifyListeners();
  }

  Widget get currentList => this._currentList;

  set currentColor(Color color){
    this._colorItem = color;
    notifyListeners();
  }
  Color get currentColor => this._colorItem;

  set currentTitle(String title){
    this._currentTitle = title;
    notifyListeners();
  }
  String get currentTitle => this._currentTitle;
}