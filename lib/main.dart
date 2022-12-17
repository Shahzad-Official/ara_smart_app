import 'package:ara_smart_app/constants/app_colors.dart';
import 'package:ara_smart_app/views/register_screens/login.dart';
import 'package:ara_smart_app/views/splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:avatar_glow/avatar_glow.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:speech_to_text/speech_to_text.dart' as speechToText;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart App',
      theme: ThemeData(
        primarySwatch: AppColors().customMaterialColor(),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  speechToText.SpeechToText speech = speechToText.SpeechToText();
  String textString = "Press The Button";
  bool isListen = false;
  String? data;
  double confidence = 1.0;

  listenToYou() async {
    if (!isListen) {
      bool avail = await speech.initialize(
        onStatus: (status) {},
        onError: (errorNotification) {},
      );
      if (avail) {
        setState(() {
          isListen = true;
        });
        speech.listen(onResult: (value) {
          setState(() {
            data = value.recognizedWords;
          });
        });
        Future.delayed(
          const Duration(seconds: 7),
          (() {
            setState(() {
              isListen = false;
            });
            speech.stop();
          }),
        );
      }
    } else {
      setState(() {
        isListen = false;
      });
      speech.stop();
    }
  }

  playCommand() async {
    String audioasset = "assets/audios/command.mp3";
    ByteData bytes = await rootBundle.load(audioasset);
    Uint8List soundbytes =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    await player.play(
      BytesSource(soundbytes),
    );
    player.onPlayerComplete.listen((event) {
      listenToYou();
    });
  }

  repeatCommand() async {
    String audioasset = "assets/audios/repeat_command.mp3";
    ByteData bytes = await rootBundle.load(audioasset);
    Uint8List soundbytes =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    await player.play(
      BytesSource(soundbytes),
    );
    player.onPlayerComplete.listen((event) {
      listenToYou();
    });
  }

  @override
  void initState() {
    super.initState();
    speech = speechToText.SpeechToText();
    playCommand();
  }

  checkCommands() {
    if (data == 'login') {
      Future.delayed(
        const Duration(seconds: 1),
        (() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            )),
      );
    } else if (data != null && data != "login") {
      repeatCommand();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (data == 'login' || data == "one") {
      Future.delayed(
        const Duration(seconds: 1),
        (() => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Login(),
              ),
            )),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Voice commands"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                data ?? "Confidence",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AvatarGlow(
        animate: isListen,
        glowColor: Colors.red,
        endRadius: 65.0,
        duration: Duration(milliseconds: 2000),
        repeatPauseDuration: Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          child: Icon(isListen ? Icons.mic : Icons.mic_none),
          onPressed: () async {
            await listenToYou();
          },
        ),
      ),
    );
  }
}
