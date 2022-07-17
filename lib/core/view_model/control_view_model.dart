

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/view/home_view.dart';
import 'package:movie/view/profiel_view.dart';
import 'package:movie/view/save_movie.dart';
import 'package:movie/view/search_view.dart';

class ControlViewModel extends GetxController {
  int _navigatorValue = 0;

  get navigatorValue => _navigatorValue;
  Widget _currentScreen = HomeView();
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = SearchView();
          break;
        }
      case 2:
        {
          _currentScreen = const SaveMovieView();
          break;
        }
        case 3:
        {
          _currentScreen = const ProfileView();
          break;
        }
    }
    update();
  }
}