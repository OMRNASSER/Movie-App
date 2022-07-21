import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/core/view_model/movie_view_model.dart';
import 'package:movie/model/movie_model.dart';

class SeeAll extends StatelessWidget {
  int? Id ;
   SeeAll({Key? key, this.Id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieViewModel>(
      init: Get.put(MovieViewModel()),
        builder: (controller) {
      List<MovieModel> list ;
      list = controller.movieModel.where((element) => element.Id == Id ).toList() ;
      return Scaffold(

        body: GridView.builder(
          itemCount: list.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 70.0,


          ),
          itemBuilder: (context, index) {
            return Container(
              height: 400,
              width: double.infinity,


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Container(
                    height: 220,
                    width: 170,



                    // child: Image.asset(
                    //   "assets/images/Beauty-Beast-2017-Movie-Posters.png",
                    //   height: 170,
                    //   width: 150,
                    //   fit: BoxFit.fill,
                    //
                    // ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                            list[index].movieImage.toString(),
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, top: 3.0),
                          child: Center(
                            child: Text(
                              list[index].movieName.toString(),
                              style: TextStyle(
                                fontSize: 10.0,
                                fontFamily: 'Oswald',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, left: 5.0),
                        child: Icon(
                          Icons.more_vert,
                          size: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
