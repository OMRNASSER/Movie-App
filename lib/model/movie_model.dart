
import "package:flutter/material.dart" ;
class MovieModel {
  String? movieName, movieImage, classification, movieDetails , movieTrailerLink;

  List<String>? castImageList;

  List<String>? castNamesList;

  MovieModel(
      this.movieName,
      this.movieImage,
      this.classification,
      this.movieDetails,
      this.castImageList,
      this.castNamesList,
      this.movieTrailerLink ,
      );
  MovieModel.fromJson(Map<dynamic , dynamic> map){
    if(map == null ){
      return ;
    }
    movieName = map['movieName'] ;
    movieImage = map['movieImage'] ;
    classification = map['classification'] ;
    movieDetails = map['movieDetails'] ;
    movieTrailerLink = map['movieTrailerLink'] ;
    castImageList =getImageList( map['castImageList']== null ? []  : map['castImageList'].toList());
    castNamesList = getNameList(map['castNamesList'] == null ? []  : map['castImageList'].toList());



  }

  toJson() {
    return {
      'movieName': movieName,
      'movieImage': movieImage,
      'classification': classification,
      'movieDetails': movieDetails,
      'movieTrailer': movieTrailerLink,
      'castImageList': castImageList,
      'castNamesList': castNamesList,


    };
  }
  List<String> getImageList(List list) {
    List<String> temp = [];
    list.map((e) => temp.add(e.toString())).toList();
    return temp;
  }
  List<String> getNameList(List list) {
    List<String> temp = [];
    list.map((e) => temp.add(e.toString())).toList();
    return temp;
  }




}