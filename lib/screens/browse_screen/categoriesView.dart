import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/popular/Results.dart';
import 'package:movies/shared/componant/componants.dart';
import 'package:movies/shared/network/remote/api_manager.dart';
import 'package:movies/styles/colors.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../myProvider/provider.dart';
import '../../shared/constants/constants.dart';
import '../home_screen/details_Screen.dart';


class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key,required this.res}) : super(key: key);

  final List<Results> res;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyPervider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Browse Category",style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
        child: ListView.separated(
          itemBuilder: (context,index) => SizedBox(
            height: MediaQuery.of(context).size.height*0.2,
            child: Container(
              color: bottomColor,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .25,
                        width: 150,
                        child: Image.network(
                          "${showImage}${res[index].posterPath}",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                      child: InkWell(
                        onTap: (){
                          provider.id = res[index].id as int;
                          print(provider.id);
                          Navigator.pushNamed(
                            context,
                            DetailsScreen.routeName,
                          );
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(res[index].title!,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              SizedBox(height: 8,),
                              Icon(Icons.star,color: COLOR_GOLD,),
                              Text(res[index].voteAverage.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          separatorBuilder: (context,index) => const SizedBox(height: 10,),
          itemCount: 12,
        ),
      ),
      /*Column(
        children:
        [
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 2,
                  ),
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Stack(
                          alignment: Alignment.center,
                          children:
                          [
                            Image.asset("assets/image/category.png"),
                            Text('MovieName',style: const TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),

                          ],
                        ),
                    );
                  })),

        ],
      ),*/
    );
  }
}
