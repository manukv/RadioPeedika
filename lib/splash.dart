import 'package:flutter/material.dart';
import 'package:streaming_audio_flutter_demo/main.dart';
import 'package:streaming_audio_flutter_demo/home.dart';

class Splash extends StatefulWidget {
  static final valueKey = ValueKey('Splash');

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();

    new Future.delayed(
        const Duration(seconds: 3),
        () => {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  ModalRoute.withName("/Video"))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: UI(),
    );
  }
}

Widget UI() {
  return Container(
    child: Center(
      child: Text(
        "Radio Peedika",
        style: TextStyle(
            color: Colors.orange, fontSize: 40, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
