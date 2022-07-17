import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoView extends StatefulWidget {
  const VideoView({Key? key}) : super(key: key);

  @override
  State<VideoView> createState() => _VideoViewState();

}

class _VideoViewState extends State<VideoView> {
  late YoutubePlayerController _controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = YoutubePlayerController(initialVideoId: convertURl('https://youtu.be/ln3_7reloiY')!) ;


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OFFICIAL TRAILER" ,style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0 ,

      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:YoutubePlayerBuilder(

          player: YoutubePlayer(
            controller: _controller,
          ),
          builder:(context, player){
            return YoutubePlayer(controller: _controller);
          },

        ),
      ),


    );
  }

  String? convertURl(String url){
    return YoutubePlayer.convertUrlToId(url);

  }
}
