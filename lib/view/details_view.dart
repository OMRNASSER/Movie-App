

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/model/movie_api_model.dart';
import 'package:movie/model/movie_model.dart';
import 'package:movie/view/video_view.dart';


// ignore: must_be_immutable
class DetailsView extends StatefulWidget {





  @override
  State<DetailsView> createState() => _DetailsViewState();
 //  String posterImage;
 //
 //  String movieName;
 //
 //  String details;
 //  List<String> castMovieImages ;
 //
 //
 // List<String> castMovieNames  ;
 //  DetailsView(this.posterImage, this.movieName, this.details , this.castMovieImages , this.castMovieNames);


 MovieModel movie ;

  DetailsView({Key? key, required this.movie}) : super(key: key);
}

class _DetailsViewState extends State<DetailsView> {
  double rate = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              Stack(
                alignment: Alignment.bottomCenter,
                children: [


                  Container(
                    height: MediaQuery.of(context).size.height * 0.38,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.movie.movieImage.toString(),

                          ),
                          fit: BoxFit.fill),
                    ),
                  ) ,

                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 180),
                      child: IconButton(
                        onPressed: (){
                          Get.back() ;

                        },
                        icon: Icon(Icons.arrow_back_ios_rounded,size: 25.0,),
                      ),
                    ),
                  ),





                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black.withOpacity(0.1) , Colors.black54, Colors.black]
                      ),
                    ),
                      child: Center(child: Column(
                        children: [
                          Text(widget.movie.movieName.toString().toUpperCase(),style: const TextStyle(
                            fontSize: 23.0 ,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Oswald" ,
                            color: Colors.white
                          ), ),
                          Text(widget.movie.classification.toString() , style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15.0 ,

                          ),),


                        ],
                      )))
                ],
              ),
              RatingBar.builder(
                updateOnDrag: true ,
                itemSize: 23.0,
                minRating:1.0,
                  itemBuilder:(context, _)=> const Icon(Icons.star , color: Colors.amber,),
                  onRatingUpdate:(rating) => setState(() {
                    rate = rating ;
                  })

                  ),
              Text("$rate"  ,style: const TextStyle(
                fontSize: 10.0,
                color: Colors.grey,
              )),

              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                    "Plot",
                  style:GoogleFonts.anton(fontSize: 15.0,),
                ),
              ),
              const SizedBox(height: 5.0,),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(

                   widget.movie.movieDetails.toString(),

                  style:const TextStyle(
                    fontSize: 10.0 ,
                    fontFamily: "OpenSan",
                    height: 2.0 ,


                  ),
                ),
              ),
              const SizedBox(height: 25.0,),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  "Cast",
                  style: GoogleFonts.anton(fontSize: 15.0) ,
                ),
              ),
              const SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _buildCastMovie(),
              ),




              GetBuilder<MovieApiModel>(
                init: Get.put(MovieApiModel()),
                  builder: (controller) =>  Container(
                  width: double.infinity,
                    height: 70,
                    padding: const EdgeInsets.all(10.0),


                    child:
                    ElevatedButton(

                      clipBehavior: Clip.antiAliasWithSaveLayer,

                      onPressed: (){
                        // Get.to( VideoView(movieVideo: widget.movie));


                      },

                      style:ElevatedButton.styleFrom(primary: Colors.red, shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                      ), ),
                      child:const Text(
                      "WATCH NOW",
                      style: TextStyle(
                        fontFamily: "Oswald",
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0 ,


                      ),
                    ), )),
              ),

            ],

          ),
            ),
        ),
      ),
    );
  }
  Widget _buildCastMovie(){
    return SizedBox(
      height: 100,
        child: ListView.separated(
            itemCount: widget.movie.castImageList!.length,
            scrollDirection: Axis.horizontal ,

            itemBuilder: (context, index) {
              return Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.2,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
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
                                widget.movie.castImageList!.elementAt(index).toString(),
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text(widget.movie.castNamesList![index].toString(), style: const TextStyle(fontSize: 10.0 , ),  ),
                    ],
                  ));
            }, separatorBuilder: (context, index) => const SizedBox(width: 10.0,)));
  }


}
