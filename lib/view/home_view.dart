import 'package:flutter/material.dart';

import 'details_view.dart';

class HomeView extends StatelessWidget {
  final List<String> movieName = [
    "1917",
    "Beauty Beast 2017",
    "Doctor Strange",
    "spider man far from home ",
    "spider man far from home",
  ];
  final List<String> posterImage = [
    "assets/images/1917.jpg",
    "assets/images/Beauty-Beast-2017-Movie-Posters.png",
    "assets/images/movies-hollywood-movies-wallpaper-preview.jpg",
    "assets/images/spider-man-far-from-home-official-movie-posters_ex7e.1080.png",
    "assets/images/spider-man-far-from-home-official-movie-posters_ex7e.1080.png",
    "assets/images/spider-man-far-from-home-official-movie-posters_ex7e.1080.png",
  ];
  final List<String> datailsMovie = [
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
    "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins.",
  ];
  final List<List<String>> castMovieNames = [
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
    [
      "Tom Halland ",
      "Zendaya",
      "Jake",
      "Jacob",
      "Sameul",
      "Marisa",
    ],
  ];
  final List<List<String >> castMovieImages = [
    [
      "assets/images/Tom Halland.jpg",
      "assets/images/Zend.jpg",
      "assets/images/Jake.jpg",
      "assets/images/jacob.jpg",
      "assets/images/sameul.jpg",
      "assets/images/marisa.jpg",
    ],
    [
      "assets/images/Tom Halland.jpg",
      "assets/images/Zend.jpg",
      "assets/images/Jake.jpg",
      "assets/images/jacob.jpg",
      "assets/images/sameul.jpg",
      "assets/images/marisa.jpg",
    ],

    [
      "assets/images/Tom Halland.jpg",
      "assets/images/Zend.jpg",
      "assets/images/Jake.jpg",
      "assets/images/jacob.jpg",
      "assets/images/sameul.jpg",
      "assets/images/marisa.jpg",
    ],
    [
      "assets/images/Tom Halland.jpg",
      "assets/images/Zend.jpg",
      "assets/images/Jake.jpg",
      "assets/images/jacob.jpg",
      "assets/images/sameul.jpg",
      "assets/images/marisa.jpg",
    ],
    [
      "assets/images/Tom Halland.jpg",
      "assets/images/Zend.jpg",
      "assets/images/Jake.jpg",
      "assets/images/jacob.jpg",
      "assets/images/sameul.jpg",
      "assets/images/marisa.jpg",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: ListView(
            children: [
              //Trending movies
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Trending",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "MOVIES",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    IconButton(
                        iconSize: 20.0,
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_outlined)),
                  ],
                ),
              ),
              //List of trending movies

              _buildListMovies(),

              //Now playing movies
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Now playing ",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "MOVIES",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                        iconSize: 20.0,
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_outlined)),
                  ],
                ),
              ),
              //List of now playing movies
              _buildListMovies(),
              //Upcoming movies
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      "Upcoming",
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "MOVIES",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 135,
                    ),
                    IconButton(
                        iconSize: 20.0,
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_outlined)),
                  ],
                ),
              ),
              //List of upcoming movies
              _buildListMovies(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListMovies() {
    return Container(
      height: 210,
      padding: EdgeInsets.only(left: 10.0),
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  DetailsView(
                        posterImage[index],
                        movieName[index],
                        datailsMovie[index],
                        castMovieImages[index],
                        castMovieNames[index],
                    ),
                  ));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.30,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Container(
                    height: 175,
                    width: 150,
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
                            posterImage[index],
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
                          child: Text(
                            movieName[index],
                            style: TextStyle(
                              fontSize: 10.0,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w800,
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
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 12.0,
        ),
      ),
    );
  }
}
