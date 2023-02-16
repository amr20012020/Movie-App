import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/popular/Results.dart';
import 'package:movies/models/search/Search_Model.dart';
import 'package:movies/shared/network/remote/api_manager.dart';
import '../../../models/similarMovies/SimilarMovies.dart';
import '../../models/categoryData.dart';
import 'categoriesView.dart';

class CategoryItem extends StatelessWidget {
  CategoryData categoryData;
  CategoryItem(this.categoryData,);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: categoryData.color,
        borderRadius: BorderRadius.circular(25),
      ),
      child: InkWell(
        onTap: ()async{
          List<Results> x = await ApiManager.getMovieWithId(categoryData.id.toString());
          Navigator.push(context, MaterialPageRoute(
              builder: (ctx) => CategoriesView(res: x,)));
        },
        child: Stack(
          alignment: Alignment.center,
          children:
          [
            Image.asset(
              categoryData.image ?? "Error",
              height: 110,
              fit: BoxFit.fill,
            ),
            Text(
              categoryData.title ?? "Error",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
