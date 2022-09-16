import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'videoplayer.dart';

class Home extends StatefulWidget {
  @override
  createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool micOpen = false;

  HomeState() {
    AlanVoice.addButton(
        "18c08c07ee1e1d3ca9b18d53f434f1ea2e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_LEFT);

    AlanVoice.onCommand.add((command) {
      switch (command.data['command']) {
        case 'story':
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoPlayerApp('assets/fairy.mp4')),
            );
          }
          break;
        case 'toy':
          {
            //Body of value2
          }
          break;
        case 'audio':
          {
            switch (command.data['animal']) {
              case 'cat':
                {
                  // Body of value1
                }
                break;
              case 'cow':
                {
                  //Body of value2
                }
                break;
              case 'dog':
                {
                  //Body of value2
                }
                break;
              case 'elephant':
                {
                  //Body of value2
                }
                break;
              case 'lion':
                {
                  //Body of value2
                }
                break;
              case 'sheep':
                {
                  //Body of value2
                }
                break;
            }
          }
          break;
      }
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 5000))
      ..forward();
    _controller.addListener(() {
      if (_controller.value == 1) {
        _controller.reverse();
      }
      if (_controller.value == 0) {
        _controller.forward();
      }
      // if (_controller.value > 0.5 && micOpen == false) {
      //   _controller.reverse();
      // }
      // if (_controller.value < 0.5 && micOpen == true) {
      //   _controller.forward();
      // }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/tiger.json', controller: _controller),
      ),
    );
  }
}
