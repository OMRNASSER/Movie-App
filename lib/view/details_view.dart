import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/view/video_view.dart';


class DetailsView extends StatefulWidget {





  @override
  State<DetailsView> createState() => _DetailsViewState();
  String posterImage;

  String movieName;

  String details;
  List<String> castMovieImages ;


 List<String> castMovieNames  ;
  DetailsView(this.posterImage, this.movieName, this.details , this.castMovieImages , this.castMovieNames);



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
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Stack(
                alignment: Alignment.bottomCenter,

                children: [
                  Image.asset(
                    widget.posterImage,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    fit: BoxFit.fill,
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
                          Text(widget.movieName.toUpperCase(),style: TextStyle(
                            fontSize: 23.0 ,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Oswald" ,
                            color: Colors.white
                          ), ),
                          Text("2022.Action/Adventure" , style: TextStyle(
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
                  itemBuilder:(context, _)=> Icon(Icons.star , color: Colors.amber,),
                  onRatingUpdate:(rating) => setState(() {
                    this.rate = rating ;
                  })

                  ),
              // Text("$rate" ),

              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                    "Plot",
                  style:GoogleFonts.anton(fontSize: 15.0,),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                   widget.details,
                  style: TextStyle(
                    fontSize: 12.0 ,
                    fontFamily: "OpenSan",
                  ),
                ),
              ),
              SizedBox(height: 25.0,),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Cast",
                  style: GoogleFonts.anton(fontSize: 15.0) ,
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: _buildCastMovie(),
              ),




              Container(
                width: double.infinity,
                  height: 70,
                  padding: EdgeInsets.all(10.0),


                  child:
                  ElevatedButton(

                    clipBehavior: Clip.antiAliasWithSaveLayer,

                    onPressed: (){
                      Get.to(VideoView());

                    },

                    style:ElevatedButton.styleFrom(primary: Colors.red, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)
                    ), ),
                    child:Text(
                    "WATCH NOW",
                    style: TextStyle(
                      fontFamily: "Oswald",
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0 ,


                    ),
                  ), )),



            ],

          ),
            ),
        ),
      ),
    );
  }
  Widget _buildCastMovie(){
    return Container(
      height: 100,
        child: ListView.separated(
            itemCount: widget.castMovieImages.length,
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
                              image: AssetImage(
                                widget.castMovieImages[index],
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text(widget.castMovieNames[index], style: TextStyle(fontSize: 10.0 , ),  ),
                    ],
                  ));
            }, separatorBuilder: (context, index) => SizedBox(width: 10.0,)));
  }


}
