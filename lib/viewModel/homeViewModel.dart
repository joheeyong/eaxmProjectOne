// ignore_for_file: avoid_print

import 'package:examproject1/api/API.dart';
import 'package:examproject1/model/movie.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {

  Movie? movieDiscover;
  Movie? movieAllWeek;
  Movie? movieMovieDay;
  Movie? movieMovieWeek;
  Movie? movieTVDay;


  callDiscover() async {
    movieDiscover = await APIInterface().getDiscover();
    notifyListeners();
  }

  trendingAllWeek() async {
    movieAllWeek = await APIInterface().getTrending("all", "week");
   notifyListeners();
  }

  trendingMovieDay() async {
    movieMovieDay = await APIInterface().getTrending("movie", "day");
    notifyListeners();
  }

  trendingMovieWeek() async {
    movieMovieWeek = await APIInterface().getTrending("movie", "week");
    notifyListeners();
  }

  trendingTVDay() async {
    movieTVDay = await APIInterface().getTrending("tv", "day");
    notifyListeners();
  }


}