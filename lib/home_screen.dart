import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_demo/video_items.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          VideoItems(
            videoPlayerController:
                VideoPlayerController.asset('assets/video_2.mp4'),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController:
                VideoPlayerController.asset('assets/video_3.mp4'),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4'),
            looping: false,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
