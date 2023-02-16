import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/categoryData.dart';
import 'categoryItem.dart';


class Browse_Screen extends StatefulWidget {
  static const String routeName = "Browse_Screen";
  @override
  State<Browse_Screen> createState() => _Browse_ScreenState();
}

class _Browse_ScreenState extends State<Browse_Screen> {
  // Function onCategorySelect;
  @override
  Widget build(BuildContext context) {
    //var pro = Provider.of<MyProvider>(context);
    var categories = getCategories(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Browse Category",),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemBuilder: (BuildContext context,int index){
              return CategoryItem(categories[index],);
            }
        ),
      ),
    );
  }
  CategoryData? categoryData = null;

  void onCategorySelected(categorySelected){
    categoryData = categorySelected;
    setState(() {

    });
  }
}


