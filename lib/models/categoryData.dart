import 'dart:ui';

import 'package:flutter/cupertino.dart';

class CategoryData {
  int? id;
  String? title;
  String? image;
  Color? color;
  CategoryData(this.id, this.title, this.image, this.color);
}

// https://api.themoviedb.org/3/genre/movie/list?api_key=03dc69d016d798b7fb980e9925529385&language=en-US

List<CategoryData> getCategories(BuildContext context) {
  return [
    CategoryData(
        28, "Action", "assets/image/category.png", Color(0xFF1C73C9)),
    CategoryData(
        12, "Adventure", "assets/image/category.png", Color(0xFFC91C22)),
    CategoryData(
        16, "Animation","assets/image/category.png", Color(0xFF3C5E25)),
    CategoryData(
        35, "Comedy","assets/image/category.png", Color(0xFF4C1156)),
    CategoryData(
        80, "Crime","assets/image/category.png", Color(0xFFA96F72)),
    CategoryData(
        99, "Documentary","assets/image/category.png", Color(0xFF6FA983)),
    CategoryData(
        18, "Drama","assets/image/category.png", Color(0xFF8D6FA9)),
    CategoryData(
        10751, "Family","assets/image/category.png", Color(0xFF893E9A)),
    CategoryData(
        14, "Fantasy","assets/image/category.png", Color(0xFF3E8C9A)),
    CategoryData(
        36, "History","assets/image/category.png", Color(0xFF0D1A52)),
    CategoryData(
        27, "Horror","assets/image/category.png", Color(0xFF9A713C)),
    CategoryData(
        10402, "Music","assets/image/category.png", Color(0xFF3E719A)),
    CategoryData(
        9648, "Mystery","assets/image/category.png", Color(0xFF9A3E6C)),
    CategoryData(
        10749, "Romance","assets/image/category.png", Color(0xFF6E0B31)),
    CategoryData(
        878, "Science Fiction","assets/image/category.png", Color(0xFF6A9A3E)),
    CategoryData(
        10770, "TV Movie","assets/image/category.png", Color(0xFF2DB680)),
    CategoryData(
        53, "Thriller","assets/image/category.png", Color(0xFFBBAEBE)),
    CategoryData(
        10752, "War","assets/image/category.png", Color(0xFF3E9A8F)),
    CategoryData(
        37, "Western","assets/image/category.png", Color(0xFF3E9A8F)),

  ];
}