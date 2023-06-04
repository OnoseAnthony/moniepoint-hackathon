import 'package:flutter/material.dart'
    show ChangeNotifier, ClampingScrollPhysics, Color, ScrollController, ScrollPhysics;
import 'package:moniepoint_hackathon/common/constants/colors.dart';

class AppStateNotifier extends ChangeNotifier {
  int _current = 0;
  Color _color = AppColors.transparent;
  ScrollPhysics _scrollPhysics = const ClampingScrollPhysics();
  ScrollController scrollController = ScrollController();
  String currentDetailTab = 'About Item';
  ScrollController scrollController2 = ScrollController();

  Color get appBarColor => _color;
  int get current => _current;
  ScrollPhysics get scrollPhysics => _scrollPhysics;

  set current(int i) {
    _current = i;
    notifyListeners();
  }

  set appBarColor(Color c) {
    _color = c;
    notifyListeners();
  }


  set scrollPhysics(ScrollPhysics sp) {
    _scrollPhysics = sp;
    notifyListeners();
  }
}