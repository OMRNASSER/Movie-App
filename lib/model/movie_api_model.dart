import 'package:get/get.dart';
import 'package:tmdb_api/tmdb_api.dart';

class MovieApiModel extends GetxController{


  MovieApiModel(){
    loadMovies();
  }


  List trendingMovies = [] ;

  final String apikey ='1ea284c6626f72049ee5bc655309c68d' ;

  final String readAccessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxZWEyODRjNjYyNmY3MjA0OWVlNWJjNjU1MzA5YzY4ZCIsInN1YiI6IjYyZDdjMzMyZTE5NGIwMDFjNWIxODQ1ZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.yQpdYz-O9t0dElJSblJty8VRbyUx7WzkmW4gGOuizzs';

  loadMovies() async{

    TMDB tmdbWithCustomLogs = TMDB(
        ApiKeys(apikey, readAccessToken),
      logConfig: ConfigLogger(
        showLogs: true ,
        showErrorLogs: true ,
      )
    ) ;


    Map trendingMoviesMap = await tmdbWithCustomLogs.v3.trending.getTrending() ;

     trendingMovies = trendingMoviesMap['results'] ;


    print(trendingMovies);






  }





}