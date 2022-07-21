
import 'package:get/get.dart';
import 'package:movie/core/services/home_services.dart';
import 'package:movie/model/movie_model.dart';

class MovieViewModel extends GetxController {


  MovieViewModel(){
    getMovie();


  }

  List<MovieModel> get movieModel => _movieModel ;
  List<MovieModel>  _movieModel= []  ;


  getMovie() async{
    HomeServices().getMovie().then((dynamic value){
      for(int i = 0 ; i < value.length ; i++ ){
        _movieModel.add(MovieModel.fromJson(value[i].data())) ;



      }


      update() ;



    }) ;

  }



}