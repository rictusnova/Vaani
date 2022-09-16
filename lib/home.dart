import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  HomeState() {
    /// Initializing Alan with sample project id
    AlanVoice.addButton(
        "18c08c07ee1e1d3ca9b18d53f434f1ea2e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);
  }

  @override
  Widget build(context) {
    return Scaffold();
  }
}
