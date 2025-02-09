import 'package:car_app/core/enum/car_filters.dart';
import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';
import 'package:car_app/data/cars_data.dart' as data;

class CarsProvider extends ChangeNotifier {
  List<CarModel> currentList = data.list;

  void showAllCars() {
    currentList = data.list;
    notifyListeners();
  }

  void showFamilyCars() {
    List<CarModel> familyCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.familyCars) {
        familyCars.add(data.list[i]);
      }
      currentList = familyCars;
      notifyListeners();
    }
  }

  void showCheapCars() {
    List<CarModel> cheapCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.cheapCars) {
        cheapCars.add(data.list[i]);
      }
      currentList = cheapCars;
      notifyListeners();
    }
  }

  void showLuxuryCars() {
    List<CarModel> luxuryCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.luxuryCars) {
        luxuryCars.add(data.list[i]);
      }
      currentList = luxuryCars;
      notifyListeners();
    }
  }

  void showSportCars() {
    List<CarModel> sportCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.sportCars) {
        sportCars.add(data.list[i]);
      }
      currentList = sportCars;
      notifyListeners();
    }
  }

  void showPopularCars() {
    List<CarModel> popularCars = [];

    for (var i = 0; i < data.list.length; i++) {
      if (data.list[i].type == CarFilters.popularCars) {
        popularCars.add(data.list[i]);
      }
      currentList = popularCars;
      notifyListeners();
    }
  }
}
